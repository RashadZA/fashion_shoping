import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/data/my_bag_response_model.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/checkOutScreen/order_successful_dialog.dart';
import 'package:fashion_shoping/features/main/controllers/main_screen_controller.dart';
import 'package:fashion_shoping/features/paymentMethod/models/payment_method_response_model.dart';
import 'package:get/get.dart';

class CheckOutScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();
  final MainScreenController mainScreenController = Get.find<MainScreenController>();

  RxList<MyBagItemDataModel> myBagItemList = <MyBagItemDataModel>[].obs;
  RxList<ShippingAddressDataModel> shippingAddressList = <ShippingAddressDataModel>[].obs;
  RxList<PromoCodesDataModel> promoCodesList = <PromoCodesDataModel>[].obs;
  RxList<CardDataModel> cardList = <CardDataModel>[].obs;

  Rx<PaymentMethodResponseModel> paymentMethodResponse = PaymentMethodResponseModel().obs;
  Rx<CardDataModel> selectedCard = CardDataModel().obs;
  Rx<MyBagResponseModel> myBagResponse = MyBagResponseModel().obs;
  Rx<ShippingAddressResponseModel> shippingAddressResponse = ShippingAddressResponseModel().obs;
  Rx<ShippingAddressDataModel> selectedShippingAddress = ShippingAddressDataModel().obs;
  Rx<PromoCodesResponseModel> promoCodesResponse = PromoCodesResponseModel().obs;
  Rx<PromoCodesDataModel> selectedPromoCode = PromoCodesDataModel().obs;

  RxDouble totalAmount = 0.0.obs;
  RxDouble deliveryCharge = 0.0.obs;

  RxString promoCodeId = "".obs;
  RxString shippingAddressRoad = "".obs;
  RxString shippingAddressRestOfThePartWithoutRoad = "".obs;
  RxString shippingAddressId = "".obs;
  RxString defaultPaymentMethodId = "".obs;

  RxBool checkOutScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    checkOutScreenDataProcessing.value = true;

    shippingAddressId.value = await apiRepository.getSelectedShippingAddress();

    deliveryCharge.value = 10;

    /// My Bag part
    myBagResponse.value = MyBagResponseModel.fromJson(myBagSampleData);
    myBagItemList.value = myBagResponse.value.data ?? <MyBagItemDataModel>[];

    /// Promo Codes part
    promoCodesResponse.value = PromoCodesResponseModel.fromJson(yourPromoCodesSampleData);
    promoCodesList.value = promoCodesResponse.value.data ?? <PromoCodesDataModel>[];
    selectedPromoCode.value = promoCodesList.first;

    /// My Shipping Address part
    shippingAddressResponse.value = ShippingAddressResponseModel.fromJson(shippingAddressesSampleData);
    shippingAddressList.value = shippingAddressResponse.value.data ?? <ShippingAddressDataModel>[];
    selectedShippingAddress.value = shippingAddressList.firstWhere(
          (address) => address.shippingAddressId == shippingAddressId.value,
      orElse: () => shippingAddressList.isNotEmpty ? shippingAddressList.first : ShippingAddressDataModel(),
    );
    shippingAddressRoad.value = selectedShippingAddress.value.shippingAddressRoad ?? "";
    shippingAddressRestOfThePartWithoutRoad.value
    = (selectedShippingAddress.value.shippingAddressCity != null && selectedShippingAddress.value.shippingAddressCity!.isNotEmpty
        ? "${selectedShippingAddress.value.shippingAddressCity ?? ""}, " : "")
    +(selectedShippingAddress.value.shippingAddressRegion != null && selectedShippingAddress.value.shippingAddressRegion!.isNotEmpty
            ? "${selectedShippingAddress.value.shippingAddressRegion ?? ""}, " : "")
    +(selectedShippingAddress.value.shippingAddressZIPCountry != null && selectedShippingAddress.value.shippingAddressZIPCountry!.isNotEmpty
            ? selectedShippingAddress.value.shippingAddressZIPCountry ?? "" : "");

    /// Payment Method part
    defaultPaymentMethodId.value = await apiRepository.getSelectedPaymentMethod();
    paymentMethodResponse.value = PaymentMethodResponseModel.fromJson(paymentMethodSampleData);
    cardList.value = paymentMethodResponse.value.data ?? <CardDataModel>[];
    selectedCard.value = cardList.firstWhere(
          (card) => card.cardId == defaultPaymentMethodId.value,
      orElse: () => cardList.isNotEmpty ? cardList.first : CardDataModel(),
    );

    await calculateItemTotalAmount();

    checkOutScreenDataProcessing.value = false;
    update();
  }

  Future<void> shippingAddressChangeTextButtonOnPressedMethod() async {
    Get.toNamed(
        Routes.shippingAddressesScreen,
      // parameters: {
      //     "shippingAddressId": selectedShippingAddress.value.shippingAddressId ?? ""
      // }
    )?.then((value)=> init());
  }

  Future<void> paymentMethodChangeTextButtonOnPressedMethod() async {
    Get.toNamed(
      Routes.paymentMethodScreen,
    )?.then((value)=> init());
  }

  Future<void> calculateItemTotalAmount() async {
    totalAmount.value = 0.0;
    for(MyBagItemDataModel item in myBagItemList){
      totalAmount.value += item.itemTotalPrice ?? 0.0;
    }
    await calculateItemTotalAmountWithDiscount();
    update();
  }

  Future<void> calculateItemTotalAmountWithDiscount() async {
    RxDouble discountAmount = 0.0.obs;
    if(selectedPromoCode.value.promoCodesType == fixedAmount){
      discountAmount.value = (selectedPromoCode.value.promoCodesValue ?? 0).toDouble();
    } else if(selectedPromoCode.value.promoCodesType == percentage){
      if((selectedPromoCode.value.promoCodesValue ?? 0) > 0){
        discountAmount.value = totalAmount.value * ((selectedPromoCode.value.promoCodesValue ?? 0)/100);
      }
    }
    totalAmount.value = totalAmount.value - discountAmount.value;
    update();
  }

  Future<void> submitOrderButtonOnChangedMethod() async {
    Get.dialog(
        const OrderSuccessfulDialog()
    );
  }

  Future<void> orderSuccessfulDialogContinueShoppingButtonOnPressedMethod() async {
    Get.offAllNamed(Routes.mainScreen);
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
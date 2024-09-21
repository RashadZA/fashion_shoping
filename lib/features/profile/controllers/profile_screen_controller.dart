import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:fashion_shoping/features/shippingAddresses/data/models/oder_model.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();

  RxList<ShippingAddressDataModel> shippingAddressList = <ShippingAddressDataModel>[].obs;
  RxList<OrderModel> processingOrderModelList = <OrderModel>[].obs;
  RxList<OrderModel> orderModelList = <OrderModel>[].obs;
  RxList<PromoCodesDataModel> promoCodesList = <PromoCodesDataModel>[].obs;

  Rx<ShippingAddressResponseModel> shippingAddressResponse = ShippingAddressResponseModel().obs;
  Rx<MyOrdersResponseModel> myOrdersResponse = MyOrdersResponseModel().obs;
  Rx<PromoCodesResponseModel> promoCodesResponse = PromoCodesResponseModel().obs;

  RxBool profileScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    profileScreenDataProcessing.value = true;

    processingOrderModelList.value = <OrderModel>[];

    /// Promo Codes part
    promoCodesResponse.value = PromoCodesResponseModel.fromJson(yourPromoCodesSampleData);
    promoCodesList.value = promoCodesResponse.value.data ?? <PromoCodesDataModel>[];

    /// My order part
    myOrdersResponse.value = MyOrdersResponseModel.fromJson(myOrderSampleData);
    orderModelList.value = myOrdersResponse.value.data ?? <OrderModel>[];
    for (OrderModel order in orderModelList) {
      if (order.orderStatus == processing) {
        processingOrderModelList.add(order);
      }
    }

    /// My Shipping Address part
    shippingAddressResponse.value = ShippingAddressResponseModel.fromJson(shippingAddressesSampleData);
    shippingAddressList.value = shippingAddressResponse.value.data ?? <ShippingAddressDataModel>[];

    profileScreenDataProcessing.value = false;
    update();
  }
  
  Future<void> myOrderCardOnPressed() async {
    Get.toNamed(Routes.myOrdersScreen)?.then((value)=> init());
  }

  Future<void> settingCardOnPressed() async {
    Get.toNamed(Routes.settingScreen)?.then((value)=> init());
  }

  Future<void> shippingAddressCardOnPressed() async {
    Get.toNamed(
      Routes.shippingAddressesScreen,
    )?.then((value)=> init());
  }

  Future<void> promoCodesCardOnPressed() async {
    Get.toNamed(
      Routes.promoCodesScreen,
    )?.then((value)=> init());
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
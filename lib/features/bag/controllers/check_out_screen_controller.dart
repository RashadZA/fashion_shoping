import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/bag/data/my_bag_response_model.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:get/get.dart';

class CheckOutScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();

  RxList<MyBagItemDataModel> myBagItemList = <MyBagItemDataModel>[].obs;
  RxList<ShippingAddressDataModel> shippingAddressList = <ShippingAddressDataModel>[].obs;

  Rx<ShippingAddressResponseModel> shippingAddressResponse = ShippingAddressResponseModel().obs;
  Rx<ShippingAddressDataModel> selectedShippingAddress = ShippingAddressDataModel().obs;

  RxDouble totalAmount = 0.0.obs;
  RxDouble deliveryCharge = 0.0.obs;

  RxString promoCodeId = "".obs;
  RxString shippingAddressRoad = "".obs;
  RxString shippingAddressRestOfThePartWithoutRoad = "".obs;
  RxString shippingAddressId = "".obs;

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

    /// From Previous Page
    myBagItemList.value = Get.arguments ?? <MyBagItemDataModel>[];
    promoCodeId.value = Get.parameters["promoCodeId"] ?? "";
    totalAmount.value = double.parse(Get.parameters["totalAmount"] ?? "0");

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

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
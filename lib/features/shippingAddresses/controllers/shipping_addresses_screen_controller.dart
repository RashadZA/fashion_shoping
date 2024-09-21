import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:get/get.dart';

class ShippingAddressesScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();

  Rx<ShippingAddressResponseModel> shippingAddressResponse = ShippingAddressResponseModel().obs;
  Rx<ShippingAddressDataModel> selectedShippingAddress = ShippingAddressDataModel().obs;

  RxList<ShippingAddressDataModel> shippingAddressList = <ShippingAddressDataModel>[].obs;

  RxString shippingAddressId = "".obs;

  RxBool shippingAddressScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    shippingAddressScreenDataProcessing.value = true;

    shippingAddressId.value = await apiRepository.getSelectedShippingAddress();

    /// My Shipping Address part
    shippingAddressResponse.value = ShippingAddressResponseModel.fromJson(shippingAddressesSampleData);
    shippingAddressList.value = shippingAddressResponse.value.data ?? <ShippingAddressDataModel>[];
    selectedShippingAddress.value = shippingAddressList.firstWhere(
          (address) => address.shippingAddressId == shippingAddressId.value,
      orElse: () => shippingAddressList.isNotEmpty ? shippingAddressList.first : ShippingAddressDataModel(),
    );

    shippingAddressScreenDataProcessing.value = false;
    update();
  }

  Future<void> shippingAddressEditTextButtonOnPressedMethod() async {
  }
  
  Future<void> setAsADefaultShippingAddress(ShippingAddressDataModel address) async {
    selectedShippingAddress.value == address;
    await apiRepository.saveSelectedShippingAddress(address.shippingAddressId ?? "QWERTYUI");
    await init();
    update();
  }

  Future<void> settingCardOnPressed() async {
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
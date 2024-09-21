import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';
import 'package:get/get.dart';

class PromoCodeScreenController extends GetxController{

  RxList<PromoCodesDataModel> promoCodesList = <PromoCodesDataModel>[].obs;

  Rx<PromoCodesResponseModel> promoCodesResponse = PromoCodesResponseModel().obs;

  RxBool promoCodeBagScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    promoCodeBagScreenDataProcessing.value = true;

    /// Promo Codes part
    promoCodesResponse.value = PromoCodesResponseModel.fromJson(yourPromoCodesSampleData);
    promoCodesList.value = promoCodesResponse.value.data ?? <PromoCodesDataModel>[];

    promoCodeBagScreenDataProcessing.value = false;
    update();
  }
}
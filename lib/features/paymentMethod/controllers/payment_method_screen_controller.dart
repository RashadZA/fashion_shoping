import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/paymentMethod/models/payment_method_response_model.dart';
import 'package:fashion_shoping/features/paymentMethod/presentation/widgets/payment_method_bottom_sheet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PaymentMethodScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();

  RxList<CardDataModel> cardList = <CardDataModel>[].obs;

  Rx<PaymentMethodResponseModel> paymentMethodResponse = PaymentMethodResponseModel().obs;
  Rx<CardDataModel> selectedCard = CardDataModel().obs;

  RxString defaultPaymentMethodId = "".obs;

  RxBool paymentMethodScreenDataProcessing = false.obs;

  TextEditingController cardHolderNameTextEditingController = TextEditingController();
  TextEditingController cardNumberTextEditingController = TextEditingController();
  TextEditingController cardExpiredDateTextEditingController = TextEditingController();
  TextEditingController cardCVVTextEditingController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    paymentMethodScreenDataProcessing.value = true;


    /// Payment Method part
    defaultPaymentMethodId.value = await apiRepository.getSelectedPaymentMethod();
    paymentMethodResponse.value = PaymentMethodResponseModel.fromJson(paymentMethodSampleData);
    cardList.value = paymentMethodResponse.value.data ?? <CardDataModel>[];
    selectedCard.value = cardList.firstWhere(
          (card) => card.cardId == defaultPaymentMethodId.value,
      orElse: () => cardList.isNotEmpty ? cardList.first : CardDataModel(),
    );

    paymentMethodScreenDataProcessing.value = false;
    update();
  }

  Future<void> setAsADefaultShippingAddress(CardDataModel card) async {
    selectedCard.value == card;
    await apiRepository.saveSelectedPaymentMethod(card.cardId ?? "SDKFBISUEB1");
    await init();
    update();
  }

  Future<void> addOrEditPaymentMethodButtonOnPressedMethod({CardDataModel? card}) async {
    if(card != null){
      cardHolderNameTextEditingController.text = card.cardName ?? "";
      cardNumberTextEditingController.text = card.cardNumber ?? "";
      cardExpiredDateTextEditingController.text = card.cardExpiredDate ?? "";
      cardCVVTextEditingController.text = card.cardCVV ?? "";
    } else {
      cardHolderNameTextEditingController.clear();
      cardNumberTextEditingController.clear();
      cardExpiredDateTextEditingController.clear();
      cardCVVTextEditingController.clear();
    }
    Get.bottomSheet(
      PaymentMethodBottomSheetWidget(
        isForEdit: card != null,
      ),
    );
  }

  Future<void> paymentMethodBottomSheetWidgetAddOrEditCardButton(bool isForEdit) async {
    Get.back();
    "Successfully ${isForEdit ? "edited" : "added"} payment method".successSnackBar();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
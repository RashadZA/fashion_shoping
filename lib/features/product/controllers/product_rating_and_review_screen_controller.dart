import 'package:fashion_shoping/core/components/dataModels/common_name_id_type_data_response_model.dart';
import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/bottomSheet/select_image_bottom_sheet_widget.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/home/presentation/models/item_response_model.dart';
import 'package:fashion_shoping/features/product/presentation/widgets/productReview/writing_a_review_bottom_sheet_widget.dart';
import 'package:fashion_shoping/features/product/presentation/widgets/product_details_shipping_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProductRatingAndReviewScreenController extends GetxController {

  RxList<String> productImageList = <String>[].obs;
  RxList<ItemDataModel> youMayLikeList = <ItemDataModel>[].obs;
  RxList<CommonResponseModelForIdName> itemSizeList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> colorList = <CommonResponseModelForIdName>[].obs;
  RxList<XFile> addReviewImageList = <XFile>[].obs;

  Rx<ItemResponseModel> youMayLikeItemResponseModel = ItemResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemSizeResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<CommonResponseModelForIdName> selectedItemSize = CommonResponseModelForIdName().obs;
  Rx<CommonNameIdTypeDataResponseModel> colorResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<CommonResponseModelForIdName> selectedColor = CommonResponseModelForIdName().obs;

  RxInt sliderCurrentIndex = 0.obs;
  RxDouble addReviewRatingValue = 0.0.obs;

  RxBool productDetailsScreenDataOnProcessing = false.obs;
  RxBool reviewWithPhotos = true.obs;

  final TextEditingController yourReviewTextEditController = TextEditingController();

  final ImagePicker picker = ImagePicker();


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    productDetailsScreenDataOnProcessing.value = true;

    /// Product Image List Part
    productImageList.value = productImageListSampleData;

    /// Item Size
    itemSizeResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(itemSizeSampleData);
    itemSizeList.value = itemSizeResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedItemSize.value = itemSizeList.firstWhere(
        (size) => size.id == "Large",
      orElse: ()=> itemSizeList.first,
    );

    /// Item Color
    colorResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(colorSampleData);
    colorList.value = colorResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedColor.value = colorList.firstWhere(
          (color) => color.id == "BLACK",
      orElse: ()=> colorList.first,
    );


    /// You May Item List Part
    youMayLikeItemResponseModel.value = ItemResponseModel.fromJson(youMayLikeItemSampleData);
    youMayLikeList.value = youMayLikeItemResponseModel.value.data ?? <ItemDataModel>[];

    debugPrint("Get.width: ${Get.width}");
    debugPrint("Calculated width: ${(Get.width - 110) * 0.5}");

    productDetailsScreenDataOnProcessing.value = false;
  }

  Future<void> writeAReviewButtonOnPressedMethod() async {
    addReviewImageList.clear();
    Get.bottomSheet(
      const WritingAReviewBottomSheetWidget(),
      isScrollControlled: true,
      // isDismissible: false,
    );
  }

  Future<void> checkBoxOnPressedMethod() async {
    reviewWithPhotos.value = !reviewWithPhotos.value;
    update();
  }

  Future<void> ratingBarOnRatingUpdate(double rating) async {
    addReviewRatingValue.value = rating;
    update();
  }

  Future<void> chooseImageFunction() async {
    Get.bottomSheet(
      SelectImageBottomSheetWidget(
        imageFromCameraFunction: ()=> chooseImageFromCameraFunction(),
        imageFromGalleryFunction: ()=> chooseImageGalleryFunction(),
      ),
      isScrollControlled: true,
    );
  }

  Future<void> chooseImageFromCameraFunction() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      debugPrint("Selected Image Path From Camera: ${image.path}");
      debugPrint("Selected Image Name From Camera: ${image.name}");
      addReviewImageList.add(image);
    }
    update();
  }

  Future<void> chooseImageGalleryFunction() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      debugPrint("Selected Image Path From Gallery: ${image.path}");
      debugPrint("Selected Image Name From Gallery: ${image.name}");
      addReviewImageList.add(image);
      // debugPrint("imageBase64String.value: ${imageBase64String.value}");
    }
    update();
  }

  Future<void> removeSelectedImageFromList(XFile image) async {
    addReviewImageList.removeWhere((img)=> img.path == image.path);
    update();
  }




  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
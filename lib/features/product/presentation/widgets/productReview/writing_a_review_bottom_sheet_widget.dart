import 'package:fashion_shoping/core/components/widgets/buttons/add_image_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/components/widgets/core_text_field.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/product/controllers/product_rating_and_review_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WritingAReviewBottomSheetWidget extends GetWidget<ProductRatingAndReviewScreenController> {
  const WritingAReviewBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return Obx(()=> Container(
              width: Get.width,
              height: (Get.height * 0.7),
              decoration: const BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
              ),
              child:  ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                children: [
                  Center(
                    child: Container(
                      width: 100,
                      height: 10,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "What is your rating?",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text22.copyWith(
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 50,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating)=> controller.ratingBarOnRatingUpdate(rating),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      left: (Get.width - (Get.width * 0.6)) * 0.5,
                      right: (Get.width - (Get.width * 0.6)) * 0.5,
                    ),
                    child: SizedBox(
                      width: Get.width * 0.6,
                      child: Text(
                        "Please share your opinion about this product.",
                        textAlign: TextAlign.center,
                        style: AppTextTheme.text18.copyWith(
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreTextField(
                    hintText: "Your review",
                    minLines: 5,
                    maxLines: 10,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller.yourReviewTextEditController,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: 150,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: controller.addReviewImageList.length + 1,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 0,right: 0, top: 20, bottom: 20),
                      separatorBuilder: (context, index) => const SizedBox(width: 10),
                      itemBuilder: (context, index) => index < controller.addReviewImageList.length
                          ? showImageFromFilePath(
                        deleteImageFunction: ()=> controller.removeSelectedImageFromList(controller.addReviewImageList[index]),
                          imagePath: controller.addReviewImageList[index].path,
                      )
                          : AddImageButton(onPressed: ()=> controller.chooseImageFunction(),),
                    ),
                  ),
                  CoreFlatButton(
                    onPressed: ()=> Get.back(),
                    text: "Send Review",
                    isGradientBg: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              )
          ),);
        }
    );
  }
}
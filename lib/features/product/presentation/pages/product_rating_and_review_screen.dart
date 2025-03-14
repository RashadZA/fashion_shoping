import 'package:fashion_shoping/core/components/widgets/check_box_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/product/controllers/product_rating_and_review_screen_controller.dart';
import 'package:fashion_shoping/features/product/presentation/widgets/productReview/rating_and_review_screen_review_card_widget.dart';
import 'package:fashion_shoping/features/product/presentation/widgets/productReview/rating_summary_of_product_rating_and_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductRatingAndReviewScreen extends GetWidget<ProductRatingAndReviewScreenController> {
  const ProductRatingAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return SafeArea(
            top: false,
            child: Obx(()=> Scaffold(
              backgroundColor: scaffoldBackgroundColor,
              body: Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                              Icons.arrow_back_ios,
                          ),
                        ),
                        SizedBox(
                          width: Get.width - 63,
                          child: Text(
                            "Rating & Reviews",
                            style: AppTextTheme.text26,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(left: 15,right: 15, top: 10, bottom: 10),
                      children: [
                        RatingSummaryOfProductRatingAndReviewScreen(),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(
                              width: Get.width - 150,
                              child: Text(
                                "8 reviews",
                                style: AppTextTheme.text24.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CheckBoxCustomWidget(
                                    isSelected: controller.reviewWithPhotos.value,
                                    onPressed: ()=> controller.checkBoxOnPressedMethod(),
                                  ),
                                  Text(
                                    "With photo",
                                    style: AppTextTheme.text16.copyWith(
                                      color: secondaryTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: 10,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(left: 0,right: 0, top: 10, bottom: 80),
                          separatorBuilder: (context, index) => const SizedBox(height: 10),
                          itemBuilder: (context, index) => RatingAndReviewScreenReviewCardWidget(
                            imageWillShow: controller.reviewWithPhotos.value,
                            name: "Helene Moore",
                            date: "June 5, 2019",
                            rating: 4,
                            review:
                            "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. The underarms were not too wide and the dress was made well.",
                            image: "https://randomuser.me/api/portraits/women/47.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: ()=> controller.writeAReviewButtonOnPressedMethod(),
                label: Text(
                  "Write a review",
                  style: AppTextTheme.text16.copyWith(
                    color: whiteColor,
                  ),
                ),
                icon: Icon(
                  Icons.rate_review,
                  size: 25,
                  color: whiteColor,
                ),
                backgroundColor: Colors.redAccent,
              ),
            ),
            ),
          );
        }
    );
  }
}



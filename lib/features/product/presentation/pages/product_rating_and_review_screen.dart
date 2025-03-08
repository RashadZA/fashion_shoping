import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/dropDown/common_drop_down_for_id_name.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/favorite_button.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/product/controllers/product_rating_and_review_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ProductRatingAndReviewScreen extends GetWidget<ProductRatingAndReviewScreenController> {
  const ProductRatingAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return SafeArea(
            top: false,
            child: Scaffold(
              backgroundColor: scaffoldBackgroundColor,
              body: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15, top: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rating & Reviews",
                          style: AppTextTheme.text26.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}



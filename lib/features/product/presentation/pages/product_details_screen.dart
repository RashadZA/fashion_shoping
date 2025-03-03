import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/product/controllers/product_details_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends GetWidget<ProductDetailsScreenController> {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return Scaffold(
            backgroundColor: scaffoldBackgroundColor,
            body: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "Short Dress",
                        style: AppTextTheme.text26,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        }
    );
  }
}

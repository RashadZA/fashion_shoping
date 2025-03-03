import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/home/controllers/home_see_all_items_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSeeAllItemsScreen extends GetWidget<HomeSeeAllItemsScreenController> {
  const HomeSeeAllItemsScreen({super.key});

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
                        "See All Items",
                        style: AppTextTheme.text26,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
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

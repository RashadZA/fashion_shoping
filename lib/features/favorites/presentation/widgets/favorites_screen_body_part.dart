import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/bagScreen/bag_screen_item_card_widget.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:fashion_shoping/features/favorites/presentation/widgets/favorites_screen_item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesScreenBodyPart extends GetWidget<FavoritesScreenController> {
  const FavoritesScreenBodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Obx(()=> ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      children: [
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(0.0),
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context,index){
            return  const SizedBox(
              height: 15,
            );
          },
          itemCount: controller.favoritesItemList.length,
          itemBuilder: (context,index)=> FavoritesScreenItemCardWidget(item: controller.favoritesItemList[index],),
        ),
      ],
    ),
    );
  }
}

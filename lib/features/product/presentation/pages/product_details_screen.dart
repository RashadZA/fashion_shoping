import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/dropDown/common_drop_down_for_id_name.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/favorite_button.dart';
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
          return Obx(()=> Scaffold(
            backgroundColor: scaffoldBackgroundColor,
            body: controller.productDetailsScreenDataOnProcessing.value ? defaultLoaderOfCircularProgressIndicator() : ListView(
              padding: EdgeInsets.all(0),
              children: [
                const SizedBox(
                  height: 45,
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
                const SizedBox(height: 5,),
                SizedBox(
                  width: Get.width,
                  height: 400,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.productImageList.length,
                    separatorBuilder: (context, index) => const SizedBox(width: 5,),
                    padding: const EdgeInsets.all(0.0),
                    itemBuilder: (context, index)=> SizedBox(
                      width: 300,
                      height: 400,
                      child: ImageErrorHandle(
                        width: 300,
                        height: 400,
                        borderRadius: BorderRadiusDirectional.circular(0),
                        // fit:BoxFit.cover,
                        imageUrl: controller.productImageList[index],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15, top: 10, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: (Get.width - 120) * 0.5,
                            child: CommonDropDownForIdName(
                              hintText: 'Size',
                              hideTitle: true,
                              popUpContainerHeight: 300,
                              selectedItem: controller.selectedItemSize.value,
                              asyncItems: (String filter)=> controller.filterItemSize(filter),
                              onChanged: (CommonResponseModelForIdName? item) => controller.itemSizeDropDownOnChangeMethod(item),
                            ),
                          ),
                          SizedBox(
                            width: (Get.width - 120) * 0.5,
                            child: CommonDropDownForIdName(
                              hintText: 'Color',
                              hideTitle: true,
                              popUpContainerHeight: 300,
                              selectedItem: controller.selectedColor.value,
                              asyncItems: (String filter)=> controller.filterItemColor(filter),
                              onChanged: (CommonResponseModelForIdName? item) => controller.itemColorDropDownOnChangeMethod(item),
                            ),
                          ),
                          FavoriteButton(
                            onPressed: (){},
                            selectedStatus: false,
                          ),
                        ],
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

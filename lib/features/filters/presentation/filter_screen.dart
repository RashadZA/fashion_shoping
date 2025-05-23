import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/container_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/filters/controllers/filter_screen_controller.dart';
import 'package:fashion_shoping/features/filters/models/color_response_model.dart';
import 'package:fashion_shoping/features/filters/presentation/widgets/filter_screen_color_list_card_widget.dart';
import 'package:fashion_shoping/features/shop/data/models/shop_category_item_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterScreen extends GetWidget<FilterScreenController> {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerButton(
                onPressed: (){},
                buttonText: "Discard",
                buttonColor: buttonDisableColor,
                width: (Get.width - 45) * 0.5,
                isButtonIsTapped: false,
              ),
              ContainerButton(
                onPressed: (){},
                buttonText: "Apply",
                width: (Get.width - 45) * 0.5,
                isButtonIsTapped: false,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: scaffoldAppBarColor,
          centerTitle: true,
          leading: IconButton(
            onPressed: ()=> Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 3,
          title: Text(
            "Filter",
            style: AppTextTheme.text18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: controller.filterScreenDataProcessing.value ? SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: defaultLoaderOfCupertinoActivity(color: primaryColor).defaultContainer(),
          ),
        ) : SizedBox(
          width: Get.width,
          height: Get.height,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15,right: 20,bottom: 15),
                child: Text(
                  "Price Range",
                  style: AppTextTheme.text18,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 15,right: 20),
                    child: Row(
                      children: [
                        Text(
                          "$currencySymbol${controller.priceRangeValues.value.start.toInt()}",
                          style: AppTextTheme.text18,
                        ),
                        const Spacer(),
                        Text(
                          "$currencySymbol${controller.priceRangeValues.value.end.toInt()}",
                          style: AppTextTheme.text18,
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 4, // Reduce track thickness
                      activeTrackColor: primaryColor,
                      inactiveTrackColor: primaryColor.withValues(alpha: 0.3),
                      thumbColor: primaryColor,
                      overlayColor: primaryColor.withValues(alpha: 0.2),
                      valueIndicatorColor: primaryColor,
                      rangeValueIndicatorShape: const PaddleRangeSliderValueIndicatorShape(),
                      valueIndicatorTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      min: 0,
                      max: 450,
                      divisions: 10,
                      activeColor: primaryColor,
                      labels: RangeLabels(
                        controller.priceRangeValues.value.start.toInt().toString(),
                        controller.priceRangeValues.value.end.toInt().toString(),
                      ),
                      values: controller.priceRangeValues.value,
                      onChanged: controller.priceRangeOnchangeMethod,
                    ),
                  ),
                  const SizedBox(height: 10,),
                ],
              ).defaultContainer(hP: 0,vP: 0,borderRadius: 0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15,right: 20,bottom: 15),
                child: Text(
                  "Colors",
                  style: AppTextTheme.text18,
                ),
              ),
              Container(
                width: Get.width,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: containerShadow,
                  color: cardColor,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.colorList.length,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                  separatorBuilder: (context, index)=> const SizedBox(width: 10,),
                  itemBuilder: (context, index){
                    ColorDataModel color = controller.colorList[index];
                    return Obx(()=> FilterScreenColorListCardWidget(
                      onPressed: ()=> controller.colorOnPressedMethod(color),
                      color: controller.colorList[index],
                      itemIsSelected: controller.isColorSelected(controller.colorList[index]),
                    ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15,right: 20,bottom: 15),
                child: Text(
                  "Sizes",
                  style: AppTextTheme.text18,
                ),
              ),
              Container(
                width: Get.width,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: containerShadow,
                  color: cardColor,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.itemSizeList.length,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  separatorBuilder: (context, index)=> const SizedBox(width: 15,),
                  itemBuilder: (context, index){
                    CommonResponseModelForIdName itemSize = controller.itemSizeList[index];
                    return Obx(()=> CoreButton(
                      onPressed: ()=> controller.itemSizeOnPressedMethod(itemSize),
                      child: Container(
                        width: 70,
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.isItemSizeSelected(itemSize) ? primaryColor :cardColor,
                          border: Border.all(
                            width: controller.isItemSizeSelected(itemSize) ? 0 : 2,
                            color: controller.isItemSizeSelected(itemSize) ? primaryColor : borderColor,
                          )
                        ),
                        child: Text(
                          itemSize.name ?? "",
                          style: AppTextTheme.text20.copyWith(
                            color: controller.isItemSizeSelected(itemSize) ? whiteColor : primaryTextColor,
                          ),
                        ),
                      ),
                    ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15,right: 20,bottom: 15),
                child: Text(
                  "Category",
                  style: AppTextTheme.text18,
                ),
              ),
              Container(
                width: Get.width,
                height: 180,
                decoration: BoxDecoration(
                  boxShadow: containerShadow,
                  color: cardColor,
                ),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 80,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    mainAxisExtent: (Get.width - 55) * 0.324,
                  ),
                  itemCount: controller.shopCategoryItemTypeList.length,
                  itemBuilder: (context, index) {
                    ShopCategoryItemDataModel shopCategoryItemType = controller.shopCategoryItemTypeList[index];
                    return Obx(()=> CoreButton(
                      onPressed: ()=> controller.shopCategoryItemTypeOnPressedMethod(shopCategoryItemType),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: controller.isShopCategoryItemTypeSelected(shopCategoryItemType) ? primaryColor : cardColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: controller.isShopCategoryItemTypeSelected(shopCategoryItemType) ? 0 : 2,
                              color: controller.isShopCategoryItemTypeSelected(shopCategoryItemType) ? primaryColor : borderColor,
                            )
                        ),
                        child: Text(
                          shopCategoryItemType.name ?? "",
                          style: AppTextTheme.text18.copyWith(
                            color: controller.isShopCategoryItemTypeSelected(shopCategoryItemType) ? whiteColor : primaryTextColor,
                          ),
                        ),
                      ),
                    ),);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20.0, top: 5,right: 20,bottom: 5),
                child: CoreButton(
                  onPressed: ()=> controller.branCardOnPressedMethod(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width - 65,
                        child: Column(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brand",
                              style: AppTextTheme.text18,
                            ),
                            Obx(()=> Text(
                              controller.formatNamesList(controller.selectedItemBrandList),
                              style: AppTextTheme.text16.copyWith(
                                color: secondaryTextColor,
                                overflow: TextOverflow.visible
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 25,
                        color: iconColor,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

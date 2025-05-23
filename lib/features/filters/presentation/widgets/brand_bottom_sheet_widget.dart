import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/widgets/check_box_custom_widget.dart';
import 'package:fashion_shoping/core/components/widgets/core_text_field.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fashion_shoping/features/filters/controllers/filter_screen_controller.dart';

class BrandBottomSheetWidget extends GetWidget<FilterScreenController> {
  const BrandBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return Obx(()=> Container(
              width: Get.width,
              height: (Get.height * 0.6),
              padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 0,),
              decoration: const BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
              ),
              child:  Column(
                // shrinkWrap: true,
                // padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 0,),
                children: [
                  // const SizedBox(height: 15,),
                  Text(
                    "Brands",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text22.copyWith(
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CoreTextField(
                    hintText: "Search",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller.brandSearchFieldTextEditController,
                    onChanged: (v)=> controller.brandBottomSheetSearchTextFieldSuffixIconOnPressedMethod(),
                    onSubmit: (v)=> controller.brandBottomSheetSearchTextFieldSuffixIconOnPressedMethod(),
                    suffixIcon: controller.brandBottomSheetSearchTextFieldSuffixIconIsTapped.value ? SizedBox(
                      width: 20,
                      height: 20,
                      child: defaultLoaderOfCupertinoActivity(color: primaryColor),
                    ) : IconButton(
                      onPressed: ()=> controller.brandBottomSheetSearchTextFieldSuffixIconOnPressedMethod(),
                      icon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Expanded(
                    // height: (Get.height * 0.5) - 100,
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 10,bottom: 40),
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.itemBrandList.length,
                      separatorBuilder: (context, index) => const SizedBox(height: 15,),
                      itemBuilder: (context, index) {
                        CommonResponseModelForIdName itemBrand = controller.itemBrandList[index];
                        return Obx(()=> Container(
                          width: Get.width,
                          padding: EdgeInsets.symmetric( horizontal: 15, vertical:  0),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              SizedBox(
                                width: Get.width - 85,
                                child: Text(
                                  itemBrand.name ?? "",
                                  style: AppTextTheme.text20.copyWith(
                                    color: controller.isItemBrandSelected(itemBrand) ? primaryColor : primaryTextColor,
                                  ),
                                ),
                              ),
                              CheckBoxCustomWidget(
                                checkBoxIconSize: 25,
                                checkBoxSize: 25,
                                isSelected: controller.isItemBrandSelected(itemBrand),
                                onPressed:()=> controller.itemBrandOnPressedMethod(itemBrand),
                              ),
                            ],
                          ),
                        ),
                        );
                      },
                    ),
                  )
                ],
              )
          ),
          );
        }
    );
  }
}

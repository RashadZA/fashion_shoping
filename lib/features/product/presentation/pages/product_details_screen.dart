import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/dropDown/common_drop_down_for_id_name.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/favorite_button.dart';
import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
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
          return Obx(()=> SafeArea(
            top: false,
            child: Scaffold(
              backgroundColor: scaffoldBackgroundColor,
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              body: controller.productDetailsScreenDataOnProcessing.value ? defaultLoaderOfCircularProgressIndicator() : Column(
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
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(top: 5, bottom: 80,),
                      children: [
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
                          padding: EdgeInsets.only(left: 15,right: 15, top: 10, bottom: 10),
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
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: (Get.width - 170),
                                    child: Text(
                                      "H&M",
                                      textAlign: TextAlign.left,
                                      style: AppTextTheme.text30.copyWith(
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    child: Text(
                                      "\$29.99",
                                      textAlign: TextAlign.right,
                                      style: AppTextTheme.text30.copyWith(
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Short black dress",
                                textAlign: TextAlign.left,
                                style: AppTextTheme.text16.copyWith(
                                  color: secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              CoreButton(
                                onPressed: ()=> Get.toNamed(Routes.productRatingAndReviewScreen),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RatingStarCustomWidget(
                                      width: 150,
                                      rating: 5,
                                      iconSize: 25,
                                      gapeBetweenIcons: 5,
                                    ),
                                    SizedBox(
                                      width: Get.width - 190,
                                      child: Text(
                                          "(5.0)",
                                          style: AppTextTheme.text12.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: secondaryTextColor,
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                                textAlign: TextAlign.left,
                                style: AppTextTheme.text16.copyWith(
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: secondaryColor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CoreButton(
                            onPressed: ()=> controller.shippingInfoButtonOnPressedMethod(),
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.width - 60,
                                    child: Text(
                                      "Shipping Info",
                                      style: AppTextTheme.text16.copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: iconColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: secondaryColor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CoreButton(
                            onPressed: (){},
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.width - 60,
                                    child: Text(
                                      "Support",
                                      style: AppTextTheme.text16.copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: iconColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: secondaryColor,
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 15,),
                            SizedBox(
                              width: (Get.width - 130),
                              child: Text(
                                "You can also like this",
                                textAlign: TextAlign.left,
                                style: AppTextTheme.text22.copyWith(
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                            CoreButton(
                              onPressed: (){},
                              child: SizedBox(
                                width: 100,
                                child: Text(
                                  "12 Items",
                                  textAlign: TextAlign.right,
                                  style: AppTextTheme.text16.copyWith(
                                    color: secondaryTextColor,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15,),
                          ],
                        ),
                        SizedBox(
                          height: 320,
                          width: Get.width,
                          child: ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.youMayLikeList.length,
                              separatorBuilder: (context, index)=> const SizedBox(height: 5.0),
                              itemBuilder: (context, index)=> Card(
                                  color: cardColor,
                                  child: SizedBox(
                                      width: 190,
                                      height: 300,
                                      // padding: const EdgeInsets.all(10.0),
                                      child: Stack(
                                        children: [
                                          CoreButton(
                                            onPressed: ()=> Get.offNamed(Routes.productDetailsScreen),
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 184,
                                                    width: 190,
                                                    child: Stack(
                                                      children: [
                                                        ImageErrorHandle(
                                                          height: 184,
                                                          width: 190,
                                                          fit:BoxFit.cover,
                                                          imageUrl: controller.youMayLikeList[index].itemImageUrl ?? "",
                                                        ),
                                                        (controller.youMayLikeList[index].itemDiscountPercentage ?? 0) == 0 ? Container() : Positioned(
                                                          top: 10,
                                                          left: 10,
                                                          child: Container(
                                                            width: 60,
                                                            height: 30,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(25),
                                                              color: redAccentColor,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "-${controller.youMayLikeList[index].itemDiscountPercentage ?? 0}%",
                                                                style: AppTextTheme.text16.copyWith(
                                                                  color: whiteColor,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      RatingStarCustomWidget(rating: index== 2 || index == 5 ? 4 : 5),
                                                      SizedBox(
                                                        width: 40,
                                                        child: Text(
                                                            "(${index== 2 || index == 5 ? 4 : 5})",
                                                            style: AppTextTheme.text12.copyWith(
                                                              fontWeight: FontWeight.normal,
                                                              color: secondaryTextColor,
                                                            )
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(
                                                          width: 180,
                                                          child: Text(
                                                              controller.youMayLikeList[index].itemName ?? "",
                                                              style: AppTextTheme.text14.copyWith(
                                                                fontWeight: FontWeight.normal,
                                                                // color: secondaryColor,
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 180,
                                                          child: Text(
                                                              controller.youMayLikeList[index].itemType ?? "",
                                                              style: AppTextTheme.text16.copyWith(
                                                                fontWeight: FontWeight.bold,
                                                                // color: secondaryColor,
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 180,
                                                          child: (controller.youMayLikeList[index].itemDiscountPrice ?? 0) == 0
                                                              || controller.youMayLikeList[index].itemDiscountPrice == controller.youMayLikeList[index].itemUnitRegularPrice ? Text(
                                                              "${controller.youMayLikeList[index].itemUnitRegularPrice ?? 0}\$",
                                                              style: AppTextTheme.text15.copyWith(
                                                                fontWeight: FontWeight.normal,
                                                              )
                                                          ) : RichText(
                                                              text: TextSpan(
                                                                  text: "${controller.youMayLikeList[index].itemUnitRegularPrice ?? 0}\$",
                                                                  style: AppTextTheme.text15.copyWith(
                                                                    // color: secondaryColor,
                                                                      fontWeight: FontWeight.normal,
                                                                      decoration: TextDecoration.lineThrough,
                                                                      decorationThickness: 2
                                                                  ),
                                                                  children: [
                                                                    TextSpan(
                                                                      text: " ${controller.youMayLikeList[index].itemDiscountPrice ?? 0}\$",
                                                                      style: AppTextTheme.text15.copyWith(
                                                                        color: redAccentColor,
                                                                        fontWeight: FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ]
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Positioned(
                                            top: 160,
                                            right: 10,
                                            child: CoreButton(
                                              onPressed: (){},
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: cardColor,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1),
                                                      color: cardShadowColor,
                                                    ),
                                                    BoxShadow(
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1),
                                                      color: cardShadowColor,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    index == 1 || index == 3 ? Icons.favorite : Icons.favorite_border,
                                                    size: 30,
                                                    color: index == 1 || index == 3 ? primaryColor : secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: CoreFlatButton(
                  onPressed: (){},
                  fontSize: 20,
                  borderRadius: 30,
                  text: "Add To Cart",
                  isGradientBg: false,
                ),
              ),
            ),
          ),
          );
        }
    );
  }
}



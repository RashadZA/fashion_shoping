import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_catalog_screen_controller.dart';
import 'package:fashion_shoping/features/shop/presentation/widgets/shop_catalog_screen_item_card_widget_for_grid_view.dart';
import 'package:fashion_shoping/features/shop/presentation/widgets/shop_catalog_screen_item_card_widget_for_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ShopCatalogScreen extends GetWidget<ShopCatalogScreenController> {
  const ShopCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Obx(()=> Scaffold(
        body: CustomScrollView(
          slivers: [
            // SliverStack for overlapping slivers
            SliverStack(
              children: [
                SliverPositioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                        color: scaffoldAppBarColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                            color: cardShadowColor,
                          ),
                        ]
                    ),
                  ),
                ),
                MultiSliver(
                  children: [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 110.0,
                      centerTitle: true,
                      backgroundColor: scaffoldAppBarColor,
                      leading:  Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: EdgeInsets.only(left: 40,top: 0),
                        title: Obx(()=> Text(
                          controller.appBarTitle.value,
                          style: AppTextTheme.text34,
                        ),
                        ),
                      ),
                    ),
                    SliverPinnedHeader(
                      child: Container(
                        height: 110,
                        color: scaffoldAppBarColor,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10,),
                                separatorBuilder: (context,index){
                                  return  const SizedBox(
                                    width: 15,
                                  );
                                },
                                itemCount: controller.itemTypeList.length,
                                itemBuilder: (context,index)=> Container(
                                  padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10,),
                                  decoration: BoxDecoration(
                                    color: blackColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    controller.itemTypeList[index].name ?? "",
                                    style: AppTextTheme.text16.copyWith(
                                        color: whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              // color: Colors.green,
                              padding: EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 85,
                                    height: 50,
                                    // color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CoreButton(
                                        onPressed: (){},
                                          child: Icon(
                                            Icons.filter_list_sharp,
                                            size: 35,
                                            color: iconColor,
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          // color: Colors.green,
                                          padding: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0,),
                                          child: Text(
                                            "Filters",
                                            style: AppTextTheme.text16.copyWith(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  CoreButton(
                                    onPressed: ()=> controller.showByItemOnPressedMethod(),
                                    child: SizedBox(
                                      width: 220,
                                      height: 50,
                                      // color: Colors.green,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.swap_vert,
                                            size: 35,
                                            color: iconColor,
                                          ),
                                          Container(
                                            width: 185,
                                            height: 50,
                                            // color: Colors.green,
                                            padding: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0,),
                                            child: Text(
                                              controller.selectedShortByItem.value.name ?? "",
                                              textAlign: TextAlign.center,
                                              style: AppTextTheme.text16.copyWith(
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  CoreButton(
                                    onPressed: ()=> controller.showItemInListOrGridViewTypeOnPressedMethod(),
                                    child: SizedBox(
                                      width: 35,
                                      height: 35,
                                      child: Icon(
                                        controller.showItemListInListView.value ? Icons.list_outlined : Icons.grid_view_sharp,
                                        size: 35,
                                        color: iconColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            /// Regular list with SliverList
            MultiSliver(
              children: [
                SliverPadding(
                  padding: const EdgeInsets.all(15.0),
                  sliver: controller.showItemListInListView.value ? SliverList.separated(
                    separatorBuilder: (context,index){
                      return  const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: controller.favoritesItemList.length,
                    itemBuilder: (context,index)=> ShopCatalogScreenItemCardWidgetForListView(item: controller.favoritesItemList[index],),
                  ) : SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: (Get.width-45) * 0.5,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      mainAxisExtent: 340,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index)=> ShopCatalogScreenItemCardWidgetForGridView(
                            height: 340,
                            width: (Get.width-45) * 0.5,
                            item: controller.favoritesItemList[index],
                          ),
                      childCount: controller.favoritesItemList.length,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}


import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:fashion_shoping/features/favorites/presentation/widgets/favorites_screen_item_card_widget_for_grid_view.dart';
import 'package:fashion_shoping/features/favorites/presentation/widgets/favorites_screen_item_card_widget_for_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_tools/sliver_tools.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final FavoritesScreenController controller = Get.find<FavoritesScreenController>();

  @override
  void initState(){
    super.initState();
    controller.init();
  }

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
                      expandedHeight: 100.0,
                      centerTitle: true,
                      backgroundColor: scaffoldAppBarColor,
                      actions: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.search,
                          ),
                        )
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: EdgeInsets.all(15),
                        title: Text(
                          'Favorites',
                          style: AppTextTheme.text34,
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
                                          onPressed: ()=> Get.toNamed(Routes.filterScreen),
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
                                  SizedBox(
                                    width: 220,
                                    height: 50,
                                    // color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CoreButton(
                                          onPressed: ()=> controller.showItemAccordingToPriceTypeOnPressedMethod(),
                                          child: Icon(
                                            Icons.swap_vert,
                                            size: 35,
                                            color: iconColor,
                                          ),
                                        ),
                                        Container(
                                          width: 185,
                                          height: 50,
                                          // color: Colors.green,
                                          padding: EdgeInsets.only(left: 5,top: 5,right: 0,bottom: 0,),
                                          child: Text(
                                            "Price: ${controller.itemShowAccordingToPriceType.value}",
                                            textAlign: TextAlign.center,
                                            style: AppTextTheme.text16.copyWith(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        )
                                      ],
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
                    itemBuilder: (context,index)=> FavoritesScreenItemCardWidgetForListView(item: controller.favoritesItemList[index],),
                  ) : SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: (Get.width-45) * 0.5,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      mainAxisExtent: 340,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index)=> FavoritesScreenItemCardWidgetForGridView(
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


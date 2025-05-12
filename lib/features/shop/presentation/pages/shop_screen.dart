import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_screen_controller.dart';
import 'package:fashion_shoping/features/shop/presentation/widgets/category_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with TickerProviderStateMixin {
  final ShopScreenController controller = Get.put(ShopScreenController());
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    controller.init();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        controller.selectedTabIndex.value = _tabController.index;
        print('Selected Tab: ${controller.selectedTabIndex.value}');
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Categories', style: AppTextTheme.text30),
          centerTitle: true,
          actions: const [SizedBox(width: 12)],
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: AppTextTheme.text18,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
            tabs: const [
              Tab(text: 'Women'),
              Tab(text: 'Men'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            CategoryScreenWidget(),
            CategoryScreenWidget(),
            CategoryScreenWidget(),
          ],
        ),
      ),
    );
  }
}

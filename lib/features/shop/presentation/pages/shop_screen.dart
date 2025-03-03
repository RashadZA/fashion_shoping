import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  final ShopScreenController controller = Get.find<ShopScreenController>();

  @override
  void initState(){
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: const Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: Center(
          child: Text(
              "Shop Screen"
          ),
        ),
      ),
    );
  }
}
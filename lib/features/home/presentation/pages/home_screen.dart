import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/home/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Center(
        child: Text(
          "Home Screen"
        ),
      ),
    );
  }
}

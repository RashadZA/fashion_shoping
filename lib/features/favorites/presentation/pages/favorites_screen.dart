import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return const Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Center(
        child: Text(
            "Favorites Screen"
        ),
      ),
    );
  }
}
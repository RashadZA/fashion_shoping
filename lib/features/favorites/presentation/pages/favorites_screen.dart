import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:fashion_shoping/features/favorites/presentation/widgets/favorites_screen_app_bar_part.dart';
import 'package:fashion_shoping/features/favorites/presentation/widgets/favorites_screen_body_part.dart';
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
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: Obx(()=> controller.favoritesScreenDataProcessing.value ?
        SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(defaultPadding),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                      color: cardColor.withValues(alpha:0.5),
                    ),
                  ]
              ),
              child: defaultLoaderOfCupertinoActivityForStateFullWidget(
                radius: 20,
                color: primaryColor,
              ),
            ),
          ),
        ) : const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavoritesScreenAppBarPart(),
            Expanded(child: FavoritesScreenBodyPart()),
          ],
        )
        ),
      ),
    );
  }
}

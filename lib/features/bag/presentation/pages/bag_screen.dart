import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/bagScreen/bag_screen_app_bat_part.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/bagScreen/bag_screen_body_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {

  final BagScreenController controller = Get.find<BagScreenController>();

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
        body: Obx(()=> controller.myBagScreenDataProcessing.value ?
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
            BagScreenAppBarPart(),
            Expanded(
              // height: Get.height - 197,
                child: BagScreenBodyPart()),
          ],
        )
        ),
      ),
    );
  }
}




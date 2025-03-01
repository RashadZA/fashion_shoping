import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/controllers/promoCode/promo_code_screen_controller.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/promoCode/promo_code_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoCodeScreen extends GetWidget<PromoCodeScreenController> {
  const PromoCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldAppBarColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Promo Codes",
          style: AppTextTheme.text18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Obx(()=> SizedBox(
        width: Get.width,
        height: Get.height,
        child: controller.promoCodeBagScreenDataProcessing.value ? Center(
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
        ) : ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 60),
          physics: const BouncingScrollPhysics(),
          itemCount: controller.promoCodesList.length,
          itemBuilder: (context, index){
            return PromoCodeCardWidget(
              promoCode: controller.promoCodesList[index],
            );
          },
          separatorBuilder: (context, index){
            return const SizedBox(
              height: 15,
            );
          },
        ),
      ),
      ),
    );
  }
}

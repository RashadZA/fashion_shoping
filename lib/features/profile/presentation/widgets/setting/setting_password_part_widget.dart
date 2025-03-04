import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPasswordPartWidget extends GetWidget<SettingScreenController> {
  const SettingPasswordPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Password",
                style: AppTextTheme.text16.copyWith(fontWeight: FontWeight.bold),
              ),
              CoreButton(
                onPressed: ()=> controller.changePasswordTextButtonOnPressedMethod(),
                child: Text(
                  "Change",
                  style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                ),
                Text(
                  "*****************",
                  style: AppTextTheme.text16,
                ),
              ],
            ).defaultContainer(),
          ),
        ],
      ),
    );
  }
}
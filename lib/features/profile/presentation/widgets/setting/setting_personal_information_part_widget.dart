import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPersonalInformationPartWidget extends GetWidget<SettingScreenController> {
  const SettingPersonalInformationPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width,
            child: Text(
              "Personal Information",
              style: AppTextTheme.text16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: Get.width,
            child: Text(
              "Rashaduzzaman Ananda",
              style: AppTextTheme.text16,
            ).defaultContainer(),
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
                  "Date of Birth",
                  style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                ),
                Text(
                  "01/01/1900",
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
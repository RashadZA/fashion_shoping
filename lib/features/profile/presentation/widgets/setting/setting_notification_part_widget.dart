import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingNotificationPartWidget extends GetWidget<SettingScreenController> {
  const SettingNotificationPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = Get.width - (defaultPadding + defaultPadding);
    return Obx(()=> Padding(
      padding: const EdgeInsets.only(left: 15,right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: deviceWidth,
            child: Text(
              "Notification",
              style: AppTextTheme.text16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sales",
                style: AppTextTheme.text16,
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  activeColor: greenColor,
                  value: controller.salesNotificationStatus.value,
                  onChanged: (bool value) => controller.salesNotificationStatusChangeMethod(value),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arrivals",
                style: AppTextTheme.text16,
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  activeColor: greenColor,
                  value: controller.newArrivalsNotificationStatus.value,
                  onChanged: (bool value) => controller.newArrivalsNotificationStatusChangeMethod(value),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Status Changes",
                style: AppTextTheme.text16,
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  activeColor: greenColor,
                  value: controller.deliveryStatusChangeNotificationStatus.value,
                  onChanged: (bool value) => controller.deliveryStatusChangeNotificationStatusChangeMethod(value),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
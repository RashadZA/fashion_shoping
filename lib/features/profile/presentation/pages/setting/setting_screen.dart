import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/setting/setting_notification_part_widget.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/setting/setting_password_part_widget.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/setting/setting_personal_information_part_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends GetWidget<SettingScreenController> {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context,orientation) {
        final double deviceWidth = Get.width - (defaultPadding + defaultPadding);
        return SafeArea(
          top: false,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: scaffoldAppBarColor,
              centerTitle: true,
              leading: IconButton(
                onPressed: ()=> Get.back(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
            body: Obx(()=> controller.settingDataLoading.value ? Center(
              child: defaultLoaderOfCircularProgressIndicator().defaultContainer(),
            ) : ListView(
              padding: const EdgeInsets.all(0),
              children: [
                Container(
                  width: deviceWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Settings",
                    style: AppTextTheme.text34.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SettingPersonalInformationPartWidget(),
                const SizedBox(
                  height: 25,
                ),
                const SettingPasswordPartWidget(),
                const SizedBox(
                  height: 25,
                ),
                const SettingNotificationPartWidget(),
              ],
            ),
            ),
          ),
        );
      }
    );
  }
}




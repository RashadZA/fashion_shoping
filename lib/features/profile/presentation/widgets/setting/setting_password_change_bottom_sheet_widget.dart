import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPasswordChangeBottomSheetWidget extends GetWidget<SettingScreenController> {
  const SettingPasswordChangeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
        return Container(
          width: Get.width,
          height: Get.height * 0.5,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )
          ),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 80,
                  height: 8,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(defaultBorderRadius)
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Password Change",
                  style: AppTextTheme.text18.copyWith(fontWeight: FontWeight.bold,),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CoreTextField(
                hintText: "Old Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: controller.oldPasswordTextEditController,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                alignment: Alignment.centerRight,
                child: CoreButton(
                  onPressed: ()=> Get.toNamed(Routes.forgotScreen),
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CoreTextField(
                hintText: "New Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: controller.newPasswordTextEditController,
              ),
              const SizedBox(
                height: 15,
              ),
              CoreTextField(
                hintText: "Confirm Password",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: controller.confirmPasswordTextEditController,
              ),
              const SizedBox(
                height: 25,
              ),
              CoreButton(
                onPressed: ()=> controller.settingPasswordChangeBottomSheetUpdatePasswordButtonOnPressedMethod(),
                child: Container(
                  height: 45,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(0, 1),
                        color: primaryColor.withOpacity(0.5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                      "Update Password",
                    style: AppTextTheme.text16.copyWith(color: whiteColor),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}

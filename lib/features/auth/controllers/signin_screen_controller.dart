import 'dart:async';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInScreenController extends GetxController {

  final GlobalKey<FormState> fromStateKey = GlobalKey<FormState>();

  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController = TextEditingController();

  RxBool obscureTextForPassword = true.obs;
  RxBool singInButtonIsTapped = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  Future<void> changePasswordFieldObscuredStatus() async {
    obscureTextForPassword.value = !obscureTextForPassword.value;
    update();
  }

  /// Sign In  button on pressed method
  Future<void> signInOnPressedMethod() async {
    Get.offNamed(Routes.mainScreen);
  }

  /// Create account  button on pressed method
  Future<void> createAccountOnPressedMethod() async {
    Get.offNamed(Routes.signUpScreen);
  }

  /// "Forgot your password?" Text button on pressed method
  Future<void> forgotPasswordOnPressedMethod() async {
    Get.toNamed(Routes.forgotScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
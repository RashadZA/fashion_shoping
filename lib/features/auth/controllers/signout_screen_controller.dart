import 'dart:async';
import 'package:fashion_shoping/features/auth/presentation/pages/signup_screen.dart';
import 'package:fashion_shoping/features/main/presentation/pages/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpScreenController extends GetxController {

  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  /// Sign Out  button on pressed method
  Future<void> signUpOnPressedMethod() async {
    Get.off(()=> const MainScreen());
  }


  /// "Already have an account" Text button on pressed method
  Future<void> alreadyHaveAnAccountOnPressedMethod() async {
    Get.to(()=> const SignUpScreen());
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
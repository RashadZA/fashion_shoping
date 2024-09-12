import 'dart:async';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/features/auth/presentation/pages/forgot_password.dart';
import 'package:fashion_shoping/features/auth/presentation/pages/signup_screen.dart';
import 'package:fashion_shoping/features/main/presentation/pages/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotPasswordScreenController extends GetxController {

  final TextEditingController emailTextEditController = TextEditingController();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}
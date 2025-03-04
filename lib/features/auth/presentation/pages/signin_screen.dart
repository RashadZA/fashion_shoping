import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/components/widgets/core_text_field.dart';
import 'package:fashion_shoping/features/auth/controllers/signin_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends GetWidget<SignInScreenController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Icon(
                      Icons.flutter_dash,
                      size: 200,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Sign In"),
                    const SizedBox(
                      height: 20,
                    ),
                    CoreTextField(
                      keyboardType: TextInputType.text,
                      controller: controller.emailTextEditController,
                      prefixIcon: Icons.email_rounded,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CoreTextField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      controller: controller.passwordTextEditController,
                      prefixIcon: Icons.password_outlined,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CoreButton(
                      onPressed: () => controller.forgotPasswordOnPressedMethod(),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot your password?",
                            style: TextStyle(color: primaryTextColor),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: redAccentColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CoreFlatButton(
                      onPressed: () => controller.signInOnPressedMethod(),
                      text: "SIGN IN",
                      isGradientBg: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CoreButton(
                      onPressed: () => controller.createAccountOnPressedMethod(),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Create account",
                            style: TextStyle(color: primaryTextColor),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: redAccentColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Text("Or login with social account"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CoreButton(
                          child: Container(
                            height: 64,
                            width: 92,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.facebook,
                              size: 40,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        CoreButton(
                          child: Container(
                            height: 64,
                            width: 92,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.facebook,
                              size: 40,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:fashion_shoping/features/login/presentation/pages/forgot_password.dart';
import 'package:fashion_shoping/features/login/presentation/pages/signup_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
                    controller: emailTextEditController,
                    prefixIcon: Icons.email_rounded,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreTextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: passwordTextEditController,
                    prefixIcon: Icons.password_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen(),
                        ),
                      );
                    },
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
                    onPressed: (){},
                    text: "SIGN IN",
                    isGradientBg: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoreButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
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
    );
  }
}

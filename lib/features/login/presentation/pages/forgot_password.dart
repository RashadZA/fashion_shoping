import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController emailTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        title: const Text(
          "Forgot Password",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            padding:  const EdgeInsets.all(15.0),
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
                  height: 30,
                ),
                const Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CoreTextField(
                  hintText: "Email",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: emailTextEditController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CoreFlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  text: "SEND",
                  isGradientBg: true,
                ),
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}

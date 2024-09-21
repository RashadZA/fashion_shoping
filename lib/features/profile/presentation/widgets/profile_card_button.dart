import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCardButton extends StatelessWidget {
  final String buttonTitle;
  final String buttonSubTitle;
  const ProfileCardButton({
    super.key,
    required this.buttonTitle,
    required this.buttonSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width - 85,
              child: Text(
                buttonTitle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryTextColor),
              ),
            ),
            SizedBox(
              width: Get.width - 85,
              child: Text(
                buttonSubTitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: secondaryTextColor),
              ),
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 25,
          color: secondaryTextColor,
        ),
      ],
    ).defaultContainer();
  }
}

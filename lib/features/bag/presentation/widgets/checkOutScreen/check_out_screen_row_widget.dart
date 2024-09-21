import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreenRowWidget extends StatelessWidget {
  final String title;
  final String value;
  const CheckOutScreenRowWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          height: 30,
          child: Text(
            title,
            style: AppTextTheme.text16.copyWith(
              color: secondaryTextColor,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        SizedBox(
          width: 10,
          height: 30,
          child: Text(
            ":",

            style: AppTextTheme.text16.copyWith(
              color: secondaryTextColor,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        SizedBox(
          height: 30,
          width: Get.width - 110,
          child: Text(
            "$value\$",
            textAlign: TextAlign.right,
            style: AppTextTheme.text18.copyWith(
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
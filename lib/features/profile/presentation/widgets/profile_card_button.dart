import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                buttonTitle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryTextColor),
              ),
              Text(
                buttonSubTitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: secondaryTextColor),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: secondaryTextColor,
          ),
        ],
      ),
    );
  }
}

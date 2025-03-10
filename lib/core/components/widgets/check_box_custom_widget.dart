import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class CheckBoxCustomWidget extends StatelessWidget {
  final void Function()? onPressed;
  final bool isSelected;
  const CheckBoxCustomWidget({
    super.key,
    this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? primaryColor : whiteColor,
          border: Border.all(
            width: 1,
            color: isSelected ? primaryColor : defaultBorderColorOne,
          ),
          boxShadow:  [
            BoxShadow(
              blurRadius: 0.5,
              offset:const Offset(0, 0.5),
              color: isSelected ? primaryColor.withValues(alpha:0.5) : defaultBorderColorOne.withValues(alpha:0.5),
            ),
            BoxShadow(
              blurRadius: 1,
              offset:const Offset(0, 1),
              color: isSelected ? primaryColor.withValues(alpha:0.5) : defaultBorderColorOne.withValues(alpha:0.5),
            ),
          ],
        ),
        child: isSelected ? const Icon(
          Icons.check,
          size: 20,
          color: whiteColor,
        ) : const SizedBox(
          width: 0,
          height: 0,
        ),
      ),
    );
  }
}

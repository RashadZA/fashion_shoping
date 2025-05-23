import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/filters/models/color_response_model.dart';
import 'package:flutter/material.dart';

class FilterScreenColorListCardWidget extends StatelessWidget {
  final ColorDataModel color;
  final void Function()? onPressed;
  final bool itemIsSelected;
  const FilterScreenColorListCardWidget({
    super.key,
    required this.color,
    required this.itemIsSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: itemIsSelected ? Border.all(
            width: 2,
            color: primaryColor,
          ) : null,
        ),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: hexToColor(color.colorCode ?? ""),
          ),
        ),
      ),
    );
  }
}

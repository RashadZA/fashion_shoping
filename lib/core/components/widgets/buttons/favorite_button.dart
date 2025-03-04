import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool selectedStatus;
  final double? iconSize;
  final double? containerWidth;
  final double? containerHeight;
  final void Function()? onPressed;

  const FavoriteButton({
    super.key,
    required this.selectedStatus,
    this.onPressed,
    this.containerWidth,
    this.containerHeight,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Container(
        width: containerWidth ?? 50,
        height: containerHeight ?? 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: cardColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 1),
              color: cardShadowColor,
            ),
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 1),
              color: cardShadowColor,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            selectedStatus ? Icons.favorite : Icons.favorite_border,
            size: iconSize ?? 30,
            color: selectedStatus ? primaryColor : secondaryColor,
          ),
        ),
      ),
    );
  }
}

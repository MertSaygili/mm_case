import 'package:flutter/material.dart';
import 'package:mm_case/app/extension/context_extension.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
    this.iconSize,
    this.buttonSize,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final double? buttonSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(shape: BoxShape.circle, color: context.whiteColor),
      child: InkWell(
        onTap: () {},
        borderRadius: context.borderRadiusLow,
        child: CircleAvatar(
          backgroundColor: backgroundColor ?? context.whiteColor,
          radius: buttonSize ?? context.radiusButtonSizeMedium,
          child: Icon(icon, size: iconSize ?? context.iconSizeMedium),
        ),
      ),
    );
  }
}

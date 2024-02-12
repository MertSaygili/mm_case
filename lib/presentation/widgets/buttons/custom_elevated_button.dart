import 'package:flutter/material.dart';
import 'package:mm_case/app/extension/context_extension.dart';

class CustomLongElevatedButton extends StatelessWidget {
  const CustomLongElevatedButton({required this.callbackAction, required this.text, super.key, this.iconData, this.iconColor, this.textColor});

  final VoidCallback callbackAction;
  final String text;
  final IconData? iconData;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: context.blackColor,
          backgroundColor: context.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: context.borderRadiusHigh),
        ),
        focusNode: FocusNode(),
        onPressed: callbackAction,
        child: iconData == null
            ? Text(text, style: context.bodyMedium.copyWith(color: textColor))
            : Row(
                children: [
                  Icon(iconData, color: iconColor),
                  Text(
                    text,
                    style: context.bodyMedium.copyWith(
                      color: textColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

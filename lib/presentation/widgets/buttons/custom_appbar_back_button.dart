import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_icon_button.dart';

class CustomAppbarBackButton extends StatelessWidget {
  const CustomAppbarBackButton({super.key, this.backAction});

  final VoidCallback? backAction;

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: AppIcons.goBackIcon,
      onPressed: () => backAction ?? context.pop(),
      buttonSize: context.radiusButtonSizeMedium,
    );
  }
}

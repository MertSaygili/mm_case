import 'package:flutter/material.dart';
import 'package:mm_case/app/constants/app_assets.dart';
import 'package:mm_case/app/extension/context_extension.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.backgroundImagePath,
      width: context.width,
      height: context.height,
      fit: BoxFit.fill,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mm_case/app/extension/context_extension.dart';

// background image

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: context.width,
      height: context.height,
      fit: BoxFit.cover,
      opacity: const AlwaysStoppedAnimation(0.4),
    );
  }
}

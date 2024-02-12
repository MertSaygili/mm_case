import 'package:flutter/material.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/constants/app_strings.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/presentation/widgets/appbar/custom_appbar.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_appbar_back_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_elevated_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:mm_case/presentation/widgets/images/background_image.dart';

part './widgets/menu_button.dart';

class InspirationScreen extends StatelessWidget {
  const InspirationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: context.transparentColor,
          appBar: const CustomAppbar(
            title: AppStrings.inspirationTitle,
            leading: CustomAppbarBackButton(),
            actions: [MenuButton()],
          ),
          body: Column(
            children: [
              CustomLongElevatedButton(callbackAction: () {}, text: AppStrings.dayLuckyCount),
            ],
          ),
        ),
      ],
    );
  }
}

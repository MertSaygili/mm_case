import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mm_case/app/constants/app_assets.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/constants/app_strings.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/presentation/inspiration/view_model/cubit/inspiration_cubit.dart';
import 'package:mm_case/presentation/inspiration/view_model/states/inspiration_states.dart';
import 'package:mm_case/presentation/widgets/appbar/custom_appbar.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_appbar_back_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_long_elevated_button.dart';
import 'package:mm_case/presentation/widgets/card/inspiration_card.dart';
import 'package:mm_case/presentation/widgets/images/background_image.dart';

part './widgets/inspiration_page_builder.dart';
part './widgets/menu_button.dart';
part './widgets/row_buttons.dart';

class InspirationScreen extends StatelessWidget {
  const InspirationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InspirationCubit(screenContext: context),
      lazy: false,
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(imagePath: AppAssets.backgroundImagePath),
        Scaffold(
          backgroundColor: context.transparentColor,
          appBar: const CustomAppbar(
            title: AppStrings.inspirationTitle,
            leading: CustomAppbarBackButton(),
            actions: [MenuButton()],
          ),
          body: Padding(padding: context.paddingPage, child: const InspirationPageBuilder()),
        ),
      ],
    );
  }
}

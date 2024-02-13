//* Menu Button

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/presentation/inspiration/view_model/cubit/inspiration_cubit.dart';
import 'package:mm_case/presentation/inspiration/view_model/states/inspiration_states.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_icon_button.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> with SingleTickerProviderStateMixin {
  // animation controller
  late final AnimationController animationController;

  // init animation controlelr
  @override
  void initState() {
    _setController();
    super.initState();
  }

  // dispose animation controller
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _setController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspirationCubit, InspirationState>(
      builder: (context, state) {
        return RotationTransition(
          turns: Tween(begin: 0.0, end: -0.5).animate(animationController),
          child: CustomIconButton(
            icon: AppIcons.tileIcon,
            onPressed: () {
              context.read<InspirationCubit>().changeMenuExpanded();
              state.isMenuExpanded ? animationController.reverse() : animationController.forward();
            },
            buttonSize: context.radiusButtonSizeMedium,
          ),
        );
      },
    );
  }
}

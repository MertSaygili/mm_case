part of '../inspiration_screen.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: CustomIconButton(
        icon: AppIcons.tileIcon,
        onPressed: () {},
        buttonSize: context.radiusButtonSizeMedium,
      ),
    );
  }
}

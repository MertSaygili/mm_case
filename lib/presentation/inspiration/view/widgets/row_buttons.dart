part of '../inspiration_screen.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomLongElevatedButton(callbackAction: () {}, text: AppStrings.dayLuckyCount),
        CustomIconButton(
          icon: AppIcons.editIcon,
          onPressed: () {},
          backgroundColor: context.whiteColor,
          iconSize: context.iconSizeMedium,
          buttonSize: context.radiusButtonSizeHigh,
        )
      ],
    );
  }
}

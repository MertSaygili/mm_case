part of '../inspiration_screen.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 4, child: CustomLongElevatedButton(callbackAction: () {}, text: AppStrings.dayLuckyCount)),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomIconButton(
              icon: AppIcons.editIcon,
              onPressed: () {},
              backgroundColor: context.whiteColor,
              iconSize: context.iconSizeMedium,
              buttonSize: context.radiusButtonSizeHigh,
            ),
          ),
        )
      ],
    );
  }
}

part of '../inspiration_screen.dart';

class ExpandedMenuItems extends StatelessWidget {
  const ExpandedMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspirationCubit, InspirationState>(
      builder: (context, state) {
        return state.isMenuExpanded
            ? Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Column(
                    children: [
                      context.emptyBoxLowLowVertical,
                      CustomIconButton(
                        icon: AppIcons.help,
                        onPressed: () {},
                        buttonSize: context.radiusButtonSizeMedium,
                      ),
                      context.emptyBoxLowVertical,
                      CustomIconButton(
                        icon: AppIcons.exit,
                        onPressed: () {},
                        buttonSize: context.radiusButtonSizeMedium,
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}

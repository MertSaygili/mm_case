part of '../inspiration_screen.dart';

class InspirationPageBuilder extends StatelessWidget {
  const InspirationPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspirationCubit, InspirationState>(
      builder: (context, state) {
        return PageView.builder(
          scrollDirection: Axis.vertical,
          allowImplicitScrolling: false,
          pageSnapping: true,
          itemCount: state.inspirationItems.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InspirationCard(
                  usermodel: context.read<InspirationCubit>().getUserModel,
                  inspirationWordModel: state.inspirationItems[index],
                  downloadFunction: () {},
                  favoriteFunction: context.read<InspirationCubit>().changeFavorite,
                ),
                const RowButtons(),
              ],
            );
          },
        );
      },
    );
  }
}

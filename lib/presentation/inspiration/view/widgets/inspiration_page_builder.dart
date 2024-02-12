part of '../inspiration_screen.dart';

class InspirationPageBuilder extends StatelessWidget {
  InspirationPageBuilder({super.key});

  final UserModel userModel = UserModel(id: 0, username: 'Faik');

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
              children: [
                InspirationCard(
                  usermodel: userModel,
                  inspirationWordModel: state.inspirationItems[index],
                  downloadFunction: () {},
                  favoriteFunction: context.read<InspirationCubit>().changeFavorite,
                ),
                const Spacer(),
                const RowButtons(),
              ],
            );
          },
        );
      },
    );
  }
}

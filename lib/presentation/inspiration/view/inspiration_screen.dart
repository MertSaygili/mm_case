import 'package:flutter/material.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/constants/app_strings.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/app/models/inspiration_word_model.dart';
import 'package:mm_case/app/models/user_model.dart';
import 'package:mm_case/presentation/widgets/appbar/custom_appbar.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_appbar_back_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:mm_case/presentation/widgets/buttons/custom_long_elevated_button.dart';
import 'package:mm_case/presentation/widgets/card/inspiration_card.dart';
import 'package:mm_case/presentation/widgets/images/background_image.dart';

part './widgets/menu_button.dart';
part './widgets/row_buttons.dart';

class InspirationScreen extends StatelessWidget {
  InspirationScreen({super.key});

  final UserModel userModel = UserModel(username: 'Sevgili Faik');
  final InspirationWordModel wordModel = InspirationWordModel(
    firstMessage: AppStrings.dummy1,
    secondMessage: AppStrings.dummy2,
    isFavorite: false,
  );

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
          body: Padding(
            padding: context.paddingPage,
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              allowImplicitScrolling: false,
              pageSnapping: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InspirationCard(
                      usermodel: userModel,
                      inspirationWordModel: wordModel,
                      downloadFunction: () {},
                      favoriteFunction: () {},
                    ),
                    const Spacer(),
                    const RowButtons(),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

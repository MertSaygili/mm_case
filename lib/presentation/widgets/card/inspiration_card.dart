import 'package:flutter/material.dart';
import 'package:mm_case/app/constants/app_icons.dart';
import 'package:mm_case/app/constants/app_strings.dart';
import 'package:mm_case/app/extension/context_extension.dart';
import 'package:mm_case/app/extension/date_extension.dart';
import 'package:mm_case/app/models/inspiration_word_model.dart';
import 'package:mm_case/app/models/user_model.dart';

class InspirationCard extends StatelessWidget {
  const InspirationCard({
    super.key,
    required this.usermodel,
    required this.inspirationWordModel,
    required this.favoriteFunction,
    required this.downloadFunction,
  });

  final UserModel usermodel;
  final InspirationWordModel inspirationWordModel;
  final Function favoriteFunction;
  final Function downloadFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.whiteColor.withOpacity(0.24),
      shape: RoundedRectangleBorder(borderRadius: context.borderRadiusMedium),
      child: ListTile(
        contentPadding: context.paddingCard,
        title: _NameDateTitle(usermodel: usermodel),
        subtitleTextStyle: context.bodyMedium.copyWith(color: context.whiteColor, fontSize: context.fontSize16),
        subtitle: _Content(inspirationWordModel: inspirationWordModel, favoriteFunction: favoriteFunction),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.inspirationWordModel, required this.favoriteFunction});

  final InspirationWordModel inspirationWordModel;
  final Function favoriteFunction;

  final double _minTextConstraint = 200;
  final double _maxTextConstraint = 400;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(minHeight: _minTextConstraint, maxHeight: _maxTextConstraint),
          child: SingleChildScrollView(child: Text('${inspirationWordModel.message}')),
        ),
        context.emptyBoxLowVertical,
        InkWell(
          onTap: () => favoriteFunction(inspirationWordModel.id),
          child: Icon(
            inspirationWordModel.isFavorite == true ? AppIcons.favoriteFill : AppIcons.favoriteOutline,
            color: inspirationWordModel.isFavorite == true ? context.errorColor : context.whiteColor,
          ),
        ),
        context.emptyBoxLowVertical,
        InkWell(
          onTap: () {},
          child: SizedBox(
            width: context.width,
            height: 48,
            child: Icon(
              AppIcons.download,
              color: context.whiteColor,
            ),
          ),
        )
      ],
    );
  }
}

class _NameDateTitle extends StatelessWidget {
  const _NameDateTitle({required this.usermodel});

  final UserModel usermodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${AppStrings.dear} ${usermodel.username},',
              style: context.titleLarge.copyWith(color: context.whiteColor, fontSize: context.fontSize20, fontWeight: FontWeight.w600),
            ),
            Text(
              DateTime.now().getShortDate,
              style: context.titleSmall.copyWith(color: context.whiteColor, fontSize: context.fontSize16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        context.emptyBoxLowVertical,
      ],
    );
  }
}

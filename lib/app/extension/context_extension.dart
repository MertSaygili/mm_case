import 'package:flutter/material.dart';

//** Build Context Extension

//* Helper class for app, to use the context easily

extension ContextExtension on BuildContext {
  // default text style
  TextStyle get _defaultTextStyle => const TextStyle();

  // text theme
  TextTheme get _textTheme => Theme.of(this).textTheme;

  // current localization
  String get currentLocalization => Localizations.localeOf(this).languageCode;

  // true, false
  bool get trueCode => true;
  bool get falseCode => false;

  // height, width
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  // text theme
  TextStyle get headlineSmall => _textTheme.headlineSmall ?? _defaultTextStyle;
  TextStyle get headlineMedium => _textTheme.headlineMedium ?? _defaultTextStyle;
  TextStyle get headlineLarge => _textTheme.headlineLarge ?? _defaultTextStyle;

  TextStyle get titleSmall => _textTheme.titleSmall ?? _defaultTextStyle;
  TextStyle get titleMedium => _textTheme.titleMedium ?? _defaultTextStyle;
  TextStyle get titleLarge => _textTheme.titleLarge ?? _defaultTextStyle;

  TextStyle get labelSmall => _textTheme.labelSmall ?? _defaultTextStyle;
  TextStyle get labelMedium => _textTheme.labelMedium ?? _defaultTextStyle;
  TextStyle get labelLarge => _textTheme.labelLarge ?? _defaultTextStyle;

  TextStyle get bodySmall => _textTheme.bodySmall ?? _defaultTextStyle;
  TextStyle get bodyMedium => _textTheme.bodyMedium ?? _defaultTextStyle;
  TextStyle get bodyLarge => _textTheme.bodyLarge ?? _defaultTextStyle;

  // constant app colos
  Color get primaryColor => const Color(0XFF3498DB);
  Color get lowPrimaryColor => const Color(0XFF3498DB).withOpacity(0.2);
  Color get backgroundColor => const Color(0XFfF0F0F0);
  Color get errorColor => const Color(0xFFE74C3C);
  Color get borderColor => const Color(0xFFC0C0C0);
  Color get textColor => const Color(0XFF000000);
  Color get textColorLight => const Color(0XFFC0C0C0);
  Color get whiteColor => const Color(0XFFFFFFFF);
  Color get blackColor => const Color(0XFF000000);
  Color get greenColor => const Color(0XFF2ECC71);
  Color get greyColor => const Color(0XFFC0C0C0);
  Color get transparentColor => Colors.transparent;

  // padding
  EdgeInsets get paddingPage => const EdgeInsets.all(24);
  EdgeInsets get paddingCard => const EdgeInsets.symmetric(horizontal: 24, vertical: 16);

  // border radius
  BorderRadius get borderRadiusLow => const BorderRadius.all(Radius.circular(4));
  BorderRadius get borderRadiusMedium => const BorderRadius.all(Radius.circular(12));
  BorderRadius get borderRadiusHigh => const BorderRadius.all(Radius.circular(16));

  // empty box column
  SizedBox get emptyBoxLowVertical => SizedBox(height: height * 0.02);

  // empty box row
  SizedBox get emptyBoxLowHorizontal => SizedBox(width: width * 0.02);
  SizedBox get emptyBoxLowMediumHorizontal => SizedBox(width: width * 0.03);
  SizedBox get emptyBoxMediumHorizontal => SizedBox(width: width * 0.04);
  SizedBox get emptyBoxLargeHorizontal => SizedBox(width: width * 0.06);

  // elevation
  double get zero => 0;
  double get elevationLow => 4;
  double get elevationNormal => 8;

  // icon size
  double get iconSizeLow => 16;
  double get iconSizeMedium => 20;

  // shape
  ShapeBorder get roundedRectangleBorder => RoundedRectangleBorder(borderRadius: borderRadiusMedium);

  // font sizes
  double get fontSize10 => 10;
  double get fontSize11 => 11;
  double get fontSize12 => 12;
  double get fontSize13 => 13;
  double get fontSize14 => 14;
  double get fontSize15 => 15;
  double get fontSize16 => 16;
  double get fontSize18 => 18;
  double get fontSize20 => 20;
  double get fontSize24 => 24;
  double get fontSize28 => 28;
  double get fontSize32 => 32;
  double get fontSize36 => 36;
  double get fontSize40 => 40;
  double get fontSize48 => 48;

  // radius
  double get logoRadius => 100;
  double get radiusButtonSizeMedium => 32;
  double get radiusButtonSizeHigh => 48;
}

// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const String fontFamilyMPlus = 'MPLUSRounded1c';
const String fontFamilyNunitoSans = 'NunitoSans';

const double insetSmall = 9.0;
const double insetMedium = 15.0;
const double insetLarge = 27.0;

const Color colorPrimary = Color(0xFFF9A826);
const colorTextBright = Color(0xFFE7BD8C);
const Color colorTextDark = Color(0xFF433658);
const Color colorBackgroundMain = Color(0xFFE5E5E5);

class ScreenSizes {
  BuildContext context;
  ScreenSizes(this.context);

  double get width => context.width;
  double get height => context.height;

  bool get isSmallScreen => context.width < 600;
  bool get isMediumScreen => context.width > 600 && context.width < 1100;
  bool get isLargeScreen => context.width > 1100;
}

const TextStyle textStyleNavBarMenu = TextStyle(
  fontFamily: fontFamilyMPlus,
  fontWeight: FontWeight.w400,
  fontSize: 13,
  letterSpacing: 3,
  color: colorTextDark,
);

const TextStyle textStyleNavBarMenuActive = TextStyle(
  fontFamily: fontFamilyMPlus,
  fontWeight: FontWeight.w700,
  fontSize: 13,
  letterSpacing: 3,
  color: colorPrimary,
);

const TextStyle textStyleBodyTitle = TextStyle(
  fontFamily: fontFamilyNunitoSans,
  fontWeight: FontWeight.w900,
  fontSize: 16,
  letterSpacing: 1.5,
  color: colorTextDark,
);
const TextStyle textStyleBodySubTitle = TextStyle(
  fontFamily: fontFamilyNunitoSans,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: colorTextDark,
);
const TextStyle textStyleButton = TextStyle(
  fontFamily: fontFamilyNunitoSans,
  fontWeight: FontWeight.w700,
  fontSize: 14,
  letterSpacing: 1.5,
  color: colorTextDark,
);

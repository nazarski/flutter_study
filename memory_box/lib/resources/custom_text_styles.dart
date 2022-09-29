import 'package:flutter/material.dart';
import 'package:memory_box/resources/custom_colors.dart';

class CustomTextStyles {
  const CustomTextStyles._();

  static TextStyle mainHeading = TextStyle(
      fontFamily: 'TT Norms',
      fontWeight: FontWeight.w700,
      fontSize: 50,
      letterSpacing: 1.6,
      color: CustomColors.appWhite,
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.08),
          offset: const Offset(0, 4),
          blurRadius: 11,
        ),
      ]);
  static TextStyle appHeading = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w700,
    fontSize: 48,
    letterSpacing: 1.6,
    color: CustomColors.appWhite,
  );
  static TextStyle appSubHeading = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.2,
    color: CustomColors.appWhite,
  );
  static TextStyle appMainHeading = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w400,
    fontSize: 24,
    letterSpacing: 1.2,
    color: CustomColors.appTextBlack,
  );
  static TextStyle appMainText = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.24,
    letterSpacing: 1.2,
    color: CustomColors.appTextBlack,
  );
  static TextStyle appButtonText = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    letterSpacing: 1.1,
    color: CustomColors.appWhite,
  );
}

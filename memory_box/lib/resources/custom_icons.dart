import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/resources/custom_colors.dart';

class CustomIcons {
  const CustomIcons._();

  static Widget mic = SvgPicture.asset('assets/icons/mic.svg',
      height: 64,
      width: 64,
      color: CustomColors.appWhite,
      semanticsLabel: 'Mic');
}

import 'package:flutter/material.dart';
import 'package:task_master/resources/colors_list.dart';

class StylesList {
  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 3, color: ColorList.lightOlive),
    borderRadius: const BorderRadius.all(
      Radius.circular(50.0),
    ),
  );
}

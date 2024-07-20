import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme:  ColorScheme.light(
    surface:  Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: CupertinoColors.white,
    inversePrimary: Colors.grey.shade900
  ),
);
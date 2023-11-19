import 'package:flutter/material.dart';
import 'package:furpixs/constants/colors.dart';
import 'package:furpixs/constants/sizes.dart';

class TElevatedTheme{
  TElevatedTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape:RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsetsDirectional.symmetric(vertical: tButtonHeight),
    )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
  shape:RoundedRectangleBorder(),
  foregroundColor: tSecondaryColor,
  backgroundColor: tWhiteColor,
  side: BorderSide(color: tSecondaryColor),
  padding: EdgeInsetsDirectional.symmetric(vertical: tButtonHeight),
  )
  );
}
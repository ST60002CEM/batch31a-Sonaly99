import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();


  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsetsDirectional.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsetsDirectional.symmetric(vertical: tButtonHeight),
    ),
  );
}
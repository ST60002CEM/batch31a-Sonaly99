import 'dart:html';

import 'package:flutter/material.dart';
import 'package:furpixs/constants/colors.dart';

class TextFormFieldTheme {
TextFormFieldTheme._();

static InputDecorationTheme lightInputDecorationTheme =
    const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tSecondaryColor,
      floatingLabelStyle: TextStyle(color:  tSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: tSecondaryColor),
      )
    );
static InputDecorationTheme darkInputDecorationTheme =
const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color:  tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2,color: tSecondaryColor),
    )
);

}
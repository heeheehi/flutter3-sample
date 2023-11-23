import 'package:flutter/material.dart';

RadioThemeData appRadioThemeData(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  return RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary;
      } else {
        return colorScheme.background;
      }
    }),
    // TODO: overlayColor 가 background color 가 맞는지 확인
    overlayColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.onPrimary;
      } else {
        return colorScheme.background;
      }
    }),
  );
}
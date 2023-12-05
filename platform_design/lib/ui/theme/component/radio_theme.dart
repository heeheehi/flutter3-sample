import 'package:flutter/material.dart';

RadioThemeData appRadioThemeData(ColorScheme colorScheme) {
  return RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected) || states.contains(MaterialState.pressed) || states.contains(MaterialState.focused)) {
        return colorScheme.primary;
      } else {
        return colorScheme.surface;
      }
    }),
    overlayColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected) || states.contains(MaterialState.pressed) || states.contains(MaterialState.focused)) {
        return colorScheme.primary;
      } else {
        return colorScheme.surface;
      }
    }),
  );
}
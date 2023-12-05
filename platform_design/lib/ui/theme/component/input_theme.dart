import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/typography/text_theme.dart';

InputDecorationTheme KTInputDecorationTheme(ColorScheme colorScheme) {
  TextTheme textTheme = KTTextTheme;
  return InputDecorationTheme(
    filled: true,
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
    // container color
    fillColor: colorScheme.background,
    focusColor: colorScheme.background,
    hoverColor: colorScheme.background,
    // textStyle
    labelStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onBackground),
    floatingLabelStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onBackground),
    hintStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onSurface),
    counterStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onSurface),
    errorStyle: textTheme.bodySmall?.copyWith(color: colorScheme.error), // error Text Style
    // border style(only color)
    outlineBorder: BorderSide(color: colorScheme.outline),
    activeIndicatorBorder: BorderSide(color: colorScheme.outline),
    // border style(color, radius)
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error)
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: KTColorResource.textDimGrey)
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.outline)
    ),
    errorBorder: OutlineInputBorder( // error Border Style
      borderSide: BorderSide(color: colorScheme.error)
    ),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.outline)
    ),
  );
}
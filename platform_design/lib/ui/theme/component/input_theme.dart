import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/color/color_scheme.dart';
import 'package:platform_design/ui/theme/typography/font_resource.dart';

InputDecorationTheme appInputDecorationTheme(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  TextTheme textTheme = Theme.of(context).textTheme;
  return InputDecorationTheme(
    filled: true,
    // container color
    fillColor: colorScheme.background,
    focusColor: colorScheme.background,
    hoverColor: colorScheme.background,
    // textStyle
    hintStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onSurface),
    counterStyle: textTheme.bodySmall?.copyWith(color: colorScheme.onSurface),
    errorStyle: textTheme.bodySmall?.copyWith(color: colorScheme.error), // error Text Style
    // border style(only color)
    activeIndicatorBorder: BorderSide(color: colorScheme.onPrimary),
    outlineBorder: BorderSide(color: colorScheme.onPrimary),
    // border style(color, radius)
    border: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.outline)
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error)
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: ColorResource.textDimGrey)
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.outline)
    ),
    errorBorder: OutlineInputBorder( // error Border Style
      borderSide: BorderSide(color: colorScheme.error)
    ),
  );
}
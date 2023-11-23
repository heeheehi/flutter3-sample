import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

CheckboxThemeData appCheckBoxThemeData(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  return CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary;
      } else {
        return colorScheme.background;
      }
    }),
    checkColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.onPrimary;
      } else {
        return colorScheme.background;
      }
    }),
    overlayColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.onPrimary;
      } else {
        return colorScheme.background;
      }
    }),
    splashRadius: AppShapeResource.smallShape,
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: ColorResource.inputLineGrey)
    ),
    side: MaterialStateBorderSide.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return BorderSide(color: colorScheme.primary);
      } else {
        return const BorderSide(color: ColorResource.inputLineGrey);
      }
    })
  );
}
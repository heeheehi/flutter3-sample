import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

CheckboxThemeData appCheckBoxThemeData(ColorScheme colorScheme) {
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
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: ColorResource.inputLineGrey),
      borderRadius: BorderRadius.circular(AppShapeResource.extraSmallShape),
    ),
    side: MaterialStateBorderSide.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return BorderSide(color: colorScheme.primary);
      } else {
        return const BorderSide(color: ColorResource.inputLineGrey);
      }
    }),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
  );
}
import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

SnackBarThemeData KTSnackBarThemeData(ColorScheme colorScheme, TextTheme textTheme) {
  return SnackBarThemeData(
    backgroundColor: colorScheme.background,
    actionTextColor: colorScheme.onBackground,
    contentTextStyle: textTheme.bodyMedium,
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: KTColorResource.transparent),
      borderRadius: BorderRadius.circular(KTShapeResource.large)
    ),
  );
}

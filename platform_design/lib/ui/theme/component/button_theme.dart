import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

ButtonThemeData buttonThemeData(ColorScheme colorScheme) {
  return ButtonThemeData(
    minWidth: 50.0,
    height: 36.0,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppShapeResource.large),
    ),
    buttonColor: colorScheme.primary,
    disabledColor: colorScheme.surface,
  );
}

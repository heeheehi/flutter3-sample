import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

ButtonThemeData buttonThemeData(BuildContext context) {
  final ColorScheme color = Theme.of(context).colorScheme;
  return ButtonThemeData(
    minWidth: 50.0,
    height: 36.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppShapeResource.large),
    ),
    buttonColor: color.primary,
    disabledColor: color.surface,
  );
}

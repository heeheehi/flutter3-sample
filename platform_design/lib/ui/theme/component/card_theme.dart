import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

CardTheme KTCardTheme(ColorScheme colorScheme) {
  return CardTheme(
      color: colorScheme.background,
      surfaceTintColor: colorScheme.background,
      elevation: 3.5,
      shadowColor: ColorResource.cardShadow,
      margin: const EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppShapeResource.smallShape)),
  );
}
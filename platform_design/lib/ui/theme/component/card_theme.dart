import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

CardTheme appCardTheme(BuildContext context) {
  var colorScheme = Theme.of(context).colorScheme;
  return CardTheme(
      color: colorScheme.background,
      elevation: 0,
      shadowColor: ColorResource.cardShadow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppShapeResource.smallShape)),
  );
}
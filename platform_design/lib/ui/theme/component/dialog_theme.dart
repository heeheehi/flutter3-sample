import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

DialogTheme KTDialogTheme(ColorScheme colorScheme, TextTheme textTheme) {
  return DialogTheme(
    backgroundColor: colorScheme.background,
    elevation: 2.2,
    shadowColor: KTColorResource.cardShadow, // dialogShadow 별도로 필요할지?
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(KTShapeResource.medium),
    ),
    alignment: Alignment.center,
    titleTextStyle: textTheme.titleMedium,
    contentTextStyle: textTheme.bodyMedium,
    actionsPadding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16)
  );
}
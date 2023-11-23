import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';

import '../shape/shape.dart';

BottomSheetThemeData appBottomSheetThemeData(BuildContext context) {
  final ColorScheme colorScheme = Theme.of(context).colorScheme;
  return BottomSheetThemeData(
    backgroundColor: colorScheme.background,
    elevation: 2.1,
    modalBackgroundColor: ColorResource.dialogDimming,
    showDragHandle: true,
    dragHandleSize: const Size(30, 30),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppShapeResource.smallShape)),
  );
}
import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';

import '../shape/shape.dart';

BottomSheetThemeData KTBottomSheetThemeData(ColorScheme colorScheme) {
  return BottomSheetThemeData(
    shadowColor: ColorResource.shadow,
    backgroundColor: ColorResource.dialogDimming,
    modalBarrierColor: ColorResource.dialogDimming,
    surfaceTintColor: ColorResource.background,
    modalBackgroundColor: colorScheme.background,
    elevation: 2.1,
    showDragHandle: true,
    dragHandleColor: ColorResource.subGrey,
    dragHandleSize: const Size(30, 5),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppShapeResource.smallShape),
            topRight: Radius.circular(AppShapeResource.smallShape),
        ),
    ),
  );
}
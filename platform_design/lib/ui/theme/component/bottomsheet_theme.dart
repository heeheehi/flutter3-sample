import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/color/color_resource.dart';

import '../shape/shape.dart';

BottomSheetThemeData KTBottomSheetThemeData(ColorScheme colorScheme) {
  return BottomSheetThemeData(
    shadowColor: KTColorResource.shadow,
    backgroundColor: KTColorResource.dialogDimming,
    modalBarrierColor: KTColorResource.dialogDimming,
    surfaceTintColor: KTColorResource.background,
    modalBackgroundColor: colorScheme.background,
    elevation: 2.1,
    showDragHandle: true,
    dragHandleColor: KTColorResource.subGrey,
    dragHandleSize: const Size(30, 5),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(KTShapeResource.smallShape),
            topRight: Radius.circular(KTShapeResource.smallShape),
        ),
    ),
  );
}
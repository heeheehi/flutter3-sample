import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/shape/shape.dart';

SwitchThemeData appSwitchThemeData(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  return SwitchThemeData(
    thumbColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary;
      } else {
        return colorScheme.background;
      }
    }),
    trackColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.onPrimary;
      } else {
        return colorScheme.background;
      }
    }),
    trackOutlineColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary;
      } else {
        return colorScheme.background;
      }
    }),
    trackOutlineWidth: MaterialStateProperty.resolveWith<double>((states) {
      return 2; // TODO 확인 필요
    }),
    splashRadius: AppShapeResource.medium, // TODO container or thumb 확인 필요
    thumbIcon: MaterialStateProperty.resolveWith<Icon>((states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.thumb_up);
      } else if (states.contains(MaterialState.disabled)) {
        return const Icon(Icons.thumb_down_alt_outlined); // test ^^
      } else {
        return const Icon(Icons.directions_bike);
      }
    })
  );
}
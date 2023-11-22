import 'package:flutter/material.dart';

import 'app_color_resource.dart';

ColorScheme colorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: ColorResource.primaryColor,
  onPrimary: ColorResource.white,
  secondary: ColorResource.secondaryColor,
  onSecondary: ColorResource.white,
  error: ColorResource.red,
  onError: ColorResource.white,
  background: ColorResource.white,
  onBackground: ColorResource.appBlack,
  surface: ColorResource.surfaceColor,
  onSurface: ColorResource.appBlack,
);
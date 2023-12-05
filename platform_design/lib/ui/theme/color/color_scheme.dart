import 'package:flutter/material.dart';

import 'color_resource.dart';

ColorScheme KTColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: KTColorResource.primaryColor,
  onPrimary: KTColorResource.white,
  secondary: KTColorResource.secondaryColor,
  onSecondary: KTColorResource.white,
  error: KTColorResource.red,
  onError: KTColorResource.white,
  background: KTColorResource.white,
  onBackground: KTColorResource.appBlack,
  surface: KTColorResource.surfaceColor,
  onSurface: KTColorResource.appBlack,
  outline: KTColorResource.inputLineGrey,
);
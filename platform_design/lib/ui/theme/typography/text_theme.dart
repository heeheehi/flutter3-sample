import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/typography/font_resource.dart';

// TODO:
//  어차피 바뀔 것이기 때문에 테스트 데이터 상태. 디자인 가이드 나오면 변경할 것.
//  const 유지 하는게 좋음.
TextTheme appTextTheme = const TextTheme(
  displayLarge: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 57,
    height: 64,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  displayMedium: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 45,
    height: 52,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  displaySmall: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 36,
    height: 44,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  headlineLarge: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 32,
    height: 40,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  headlineMedium: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 28,
    height: 36,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  headlineSmall: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 24,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  titleLarge: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  titleMedium: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  titleSmall: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  bodyLarge: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  bodyMedium: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  bodySmall: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  labelLarge: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  labelMedium: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
  labelSmall: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 32,
    letterSpacing: -0.25,
    fontFamily: AppFontResource.fontName,
  ),
);
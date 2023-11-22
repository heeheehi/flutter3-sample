import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/app_font_resource.dart';
import 'package:platform_design/ui/theme/app_text_theme.dart';

import 'app_color_scheme.dart';

ThemeData appTheme = ThemeData(
  colorScheme: colorScheme,
  textTheme: appTextTheme,
  typography: Typography( // 언어, 다트 or 라이트 모드 일떼 텍스트 스타일 정의. 테스트로 다 똑같은 스타일 적용 중
    white: appTextTheme,
    black: appTextTheme,
    englishLike: appTextTheme, // 영어
    dense: appTextTheme, // 한 중 일어
    tall: appTextTheme // 페르시아, 인도어
  ),
  fontFamily: AppFontResource.pretendard,

  useMaterial3: true,
);
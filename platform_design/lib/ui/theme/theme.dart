import 'package:flutter/material.dart';
import 'package:platform_design/ui/theme/component/card_theme.dart';
import 'package:platform_design/ui/theme/component/checkbox_theme.dart';
import 'package:platform_design/ui/theme/component/dialog_theme.dart';
import 'package:platform_design/ui/theme/component/divider_theme.dart';
import 'package:platform_design/ui/theme/component/input_theme.dart';
import 'package:platform_design/ui/theme/component/radio_theme.dart';
import 'package:platform_design/ui/theme/component/snackbar_theme.dart';
import 'package:platform_design/ui/theme/component/switch_theme.dart';
import 'package:platform_design/ui/theme/typography/font_resource.dart';
import 'package:platform_design/ui/theme/typography/text_theme.dart';
import 'color/color_scheme.dart';
import 'component/button_theme.dart';
import 'component/page_transition_theme.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    colorScheme: colorScheme,
    textTheme: appTextTheme,
    typography: Typography( // 언어, 다트 or 라이트 모드 일떼 텍스트 스타일 정의. 테스트로 다 똑같은 스타일 적용 중
        white: appTextTheme,
        black: appTextTheme,
        englishLike: appTextTheme,
        // 영어
        dense: appTextTheme,
        // 한 중 일어
        tall: appTextTheme // 페르시아, 인도어
    ),
    fontFamily: AppFontResource.pretendard,
    cardTheme: appCardTheme(context),
    buttonTheme: buttonThemeData(context),
    checkboxTheme: appCheckBoxThemeData(context),
    dialogTheme: appDialogTheme(context),
    dividerTheme: appDividerThemeData,
    inputDecorationTheme: appInputDecorationTheme(context),
    pageTransitionsTheme: appPageTransitionsTheme,
    radioTheme: appRadioThemeData(context),
    snackBarTheme: appSnackBarThemeData(context),
    switchTheme: appSwitchThemeData(context),
    useMaterial3: true,
  );
}
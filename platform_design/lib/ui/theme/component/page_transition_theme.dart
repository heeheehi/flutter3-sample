import 'package:flutter/material.dart';

const PageTransitionsTheme KTPageTransitionsTheme = PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
    // TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    // TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    // TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
  TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
});
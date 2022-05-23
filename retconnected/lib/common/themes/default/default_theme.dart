import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'default_scheme.dart';

ThemeData getDefaultLightTheme() {
  var scheme = const DefaultColorSchemeLight();

  return FlexColorScheme.light(
    scheme: FlexScheme.money,
    colorScheme: scheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
    blendLevel: 9,
    appBarStyle: FlexAppBarStyle.custom,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
      blendOnColors: false,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onSecondary,
      bottomNavigationBarUnselectedLabelSchemeColor:
          SchemeColor.secondaryContainer,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onSecondary,
      bottomNavigationBarUnselectedIconSchemeColor:
          SchemeColor.secondaryContainer,
      bottomNavigationBarBackgroundSchemeColor: SchemeColor.secondary,
      navigationBarSelectedLabelSchemeColor: SchemeColor.surface,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.secondaryContainer,
      navigationBarSelectedIconSchemeColor: SchemeColor.surface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.secondaryContainer,
      navigationBarIndicatorSchemeColor: SchemeColor.onSecondary,
      navigationBarBackgroundSchemeColor: SchemeColor.secondary,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ).toTheme.copyWith(
      drawerTheme: DrawerThemeData(backgroundColor: scheme.background),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              primary: scheme.primary,
              onPrimary: scheme.onPrimary,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2))))));
}

ThemeData getDefaultDarkTheme() {
  var scheme = const DefaultColorSchemeLight();

  return FlexColorScheme.dark(
    scheme: FlexScheme.money,
    colorScheme: scheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onSecondary,
      bottomNavigationBarUnselectedLabelSchemeColor:
          SchemeColor.secondaryContainer,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onSecondary,
      bottomNavigationBarUnselectedIconSchemeColor:
          SchemeColor.secondaryContainer,
      bottomNavigationBarBackgroundSchemeColor: SchemeColor.secondary,
      navigationBarSelectedLabelSchemeColor: SchemeColor.surface,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.secondaryContainer,
      navigationBarSelectedIconSchemeColor: SchemeColor.surface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.secondaryContainer,
      navigationBarIndicatorSchemeColor: SchemeColor.onSecondary,
      navigationBarBackgroundSchemeColor: SchemeColor.secondary,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ).toTheme.copyWith(
      drawerTheme: DrawerThemeData(backgroundColor: scheme.background),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: scheme.primary,
              onPrimary: scheme.onPrimary,
              shape: const BeveledRectangleBorder())));
}

import 'package:flutter/material.dart';

class DefaultColorSchemeLight extends ColorScheme {
  const DefaultColorSchemeLight()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xff006d3e),
          onPrimary: const Color(0xffffffff),
          primaryContainer: const Color(0xffa6f3c0),
          onPrimaryContainer: const Color(0xff00210f),
          secondary: const Color(0xff606043),
          onSecondary: const Color(0xffffffff),
          secondaryContainer: const Color(0xffe5e4bf),
          onSecondaryContainer: const Color(0xff1c1d06),
          tertiary: const Color(0xff3b6470),
          onTertiary: const Color(0xffffffff),
          tertiaryContainer: const Color(0xffbee9f7),
          onTertiaryContainer: const Color(0xff001f27),
          error: const Color(0xffba1b1b),
          onError: const Color(0xffffffff),
          errorContainer: const Color(0xffffdad4),
          onErrorContainer: const Color(0xff410001),
          outline: const Color(0xff707971),
          background: const Color(0xfff7faf5),
          onBackground: const Color(0xff191c1a),
          surface: const Color(0xfff7faf5),
          onSurface: const Color(0xff191c1a),
          surfaceVariant: const Color(0xffd9e3d9),
          onSurfaceVariant: const Color(0xff404942),
          inverseSurface: const Color(0xff2d312e),
          onInverseSurface: const Color(0xffeff1ec),
          inversePrimary: const Color(0xff79da9f),
          shadow: const Color(0xff000000),
        );
}

class DefaultColorSchemeDark extends ColorScheme {
  const DefaultColorSchemeDark()
      : super(
          brightness: Brightness.dark,
          primary: const Color(0xff79da9f),
          onPrimary: const Color(0xff00391e),
          primaryContainer: const Color(0xff00522d),
          onPrimaryContainer: const Color(0xffa6f3c0),
          secondary: const Color(0xffc9c8a5),
          onSecondary: const Color(0xff313218),
          secondaryContainer: const Color(0xff48482d),
          onSecondaryContainer: const Color(0xffe5e4bf),
          tertiary: const Color(0xffa3cddb),
          onTertiary: const Color(0xff033541),
          tertiaryContainer: const Color(0xff224c58),
          onTertiaryContainer: const Color(0xffbee9f7),
          error: const Color(0xffffb4a9),
          onError: const Color(0xff680003),
          errorContainer: const Color(0xff930006),
          onErrorContainer: const Color(0xffffb4a9),
          outline: const Color(0xff8a938b),
          background: const Color(0xff1e2721),
          onBackground: const Color(0xffe1e3de),
          surface: const Color(0xff1b211d),
          onSurface: const Color(0xffe1e3de),
          surfaceVariant: const Color(0xff414c44),
          onSurfaceVariant: const Color(0xffc0c9c0),
          inverseSurface: const Color(0xffdee2dc),
          onInverseSurface: const Color(0xff2e312e),
          inversePrimary: const Color(0xff006d3e),
          shadow: const Color(0xff000000),
        );
}

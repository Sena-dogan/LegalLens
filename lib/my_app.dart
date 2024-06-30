import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/theme/theme_logic.dart';
import 'config/theme/theme_ui_model.dart';
import 'di/components/service_locator.dart';
import 'router/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeUiModel currentTheme = ref.watch(themeLogicProvider);
    return MaterialApp.router(
      routerConfig: getIt<SGGoRouter>().getGoRouter,

      /// Localization is not available for the title.
      title: 'Flutter Production Boilerplate',

      // Theme config for FlexColorScheme version 7.2.x. Make sure you use
      // same or higher package version, but still same major version. If you
      // use a lower package version, some properties may not be supported.
      // In that case remove them after copying this theme to your app.
      theme: FlexThemeData.light(
        scheme: FlexScheme.deepBlue,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        textTheme: textTheme,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.deepBlue,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        textTheme: textTheme,
        fontFamily: GoogleFonts.notoSans().fontFamily,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      themeMode: currentTheme.themeMode,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

final TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.notoSans(
    fontSize: 45,
  ),
  displayMedium: GoogleFonts.notoSans(
    fontSize: 40,
  ),
  displaySmall: GoogleFonts.notoSans(
    fontSize: 36,
  ),
  labelLarge: GoogleFonts.notoSans(
    fontSize: 32,
  ),
  labelMedium: GoogleFonts.notoSans(
    fontSize: 20,
  ),
  labelSmall: GoogleFonts.notoSans(
    fontSize: 18,
  ),
  bodyLarge: GoogleFonts.notoSans(
    fontSize: 16,
  ),
  bodyMedium: GoogleFonts.notoSans(
    fontSize: 14,
  ),
  bodySmall: GoogleFonts.notoSans(
    fontSize: 12,
  ),
);

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);
}

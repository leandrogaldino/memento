import 'package:flutter/material.dart';
part 'color_schemes.dart';

ThemeData get lightTheme => ThemeData(
    colorScheme: _lightColorScheme,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _lightColorScheme.secondaryContainer,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: _lightColorScheme.onPrimary,
    ),
    segmentedButtonTheme: _segmentedButtonThemeData);

ThemeData get darkTheme => ThemeData(
    colorScheme: _darkColorScheme,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _darkColorScheme.primaryContainer,
    ),
    segmentedButtonTheme: _segmentedButtonThemeData);

SegmentedButtonThemeData get _segmentedButtonThemeData =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            fontSize: 9,
          );
        }
        return const TextStyle(
          fontSize: 12,
        );
      })),
    );

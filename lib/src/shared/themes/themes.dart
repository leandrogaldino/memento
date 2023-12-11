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
    segmentedButtonTheme: _lightSegmentedButtonThemeData);

ThemeData get darkTheme => ThemeData(
    colorScheme: _darkColorScheme,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _darkColorScheme.primaryContainer,
    ),
    segmentedButtonTheme: _darkSegmentedButtonThemeData);

SegmentedButtonThemeData get _lightSegmentedButtonThemeData =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                fontSize: 12,
              );
            }
            return const TextStyle(
              fontSize: 12,
            );
          },
        ),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return _lightColorScheme.primaryContainer;
            }
            return _lightColorScheme.background;
          },
        ),
      ),
    );

SegmentedButtonThemeData get _darkSegmentedButtonThemeData =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(fontSize: 12);
            }
            return const TextStyle(fontSize: 12);
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return _darkColorScheme.primaryContainer;
            }
            return _darkColorScheme.onPrimaryContainer;
          },
        ),
      ),
    );

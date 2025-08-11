import 'package:flutter/material.dart';
import 'package:flutter_application_budget/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 30, 62, 82),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
      ).copyWith(
        scaffoldBackgroundColor: kDarkColorScheme.surface,
        textTheme: ThemeData.dark().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kDarkColorScheme.onSecondaryContainer,
            fontSize: 14,
          ),
        ),
        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.all(4),
        ),
      ),
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: kColorScheme,
      ).copyWith(
        //scaffoldBackgroundColor: kColorScheme.primaryContainer,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.all(4),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}

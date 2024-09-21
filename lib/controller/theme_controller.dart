import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Use GetX's state management to switch themes
  var isDarkMode = false.obs;

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }
}

final lightTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  brightness: Brightness.light,
  // Customize other aspects like colors, fonts, button styles, etc.
);

final darkTheme = ThemeData(
  primarySwatch: Colors.blueGrey,
  brightness: Brightness.dark,
  // Customize other aspects for the dark mode
);

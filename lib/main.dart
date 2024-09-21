import 'package:darktheme/controller/theme_controller.dart';
import 'package:darktheme/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize the controller
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Flutter Theme App',
          debugShowCheckedModeBanner: false,
          theme: lightTheme, // Apply the light theme
          darkTheme: darkTheme, // Apply the dark theme
          themeMode: themeController.theme, // Observe the theme change
          home: const HomeScreen(),
        ));
  }
}

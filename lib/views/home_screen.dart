import 'package:darktheme/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ThemeController
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Switcher"),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 90),
        child: Center(
            child: Text(
              'Hello, Flutter! I am Eeman',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
      ),
    );
  }
}

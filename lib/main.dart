import 'package:flutter/material.dart';
import 'package:toku_app/screens/splash_screen_one.dart';
import 'package:toku_app/services/theme_controller.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeController.instance.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: const Color(0xFFF5F5F5),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xffE75E34),
              foregroundColor: Colors.white,
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xff171717),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff2A1E1A),
              foregroundColor: Colors.white,
            ),
          ),
          home: const SplashScreenOne(),
        );
      },
    );
  }
}

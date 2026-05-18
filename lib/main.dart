import 'package:flutter/material.dart';
import 'package:ma_base_app/features/authentication/splash_screen.dart';
import 'package:ma_base_app/utils/theme.dart';

void main() {
  runApp(const App());
}

// Root app
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme, darkTheme: AppTheme.darkTheme, themeMode: ThemeMode.system, home: SplashScreen());
  }
}

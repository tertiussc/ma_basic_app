import 'package:flutter/material.dart';
import 'package:ma_base_app/screens/welcome_screens.dart';
import 'package:ma_base_app/utils/theme.dart';

/* Check flutter_launcher_icon  - To change the app icon */
/* Enable zoom wrap widget with "InteractiveViewer"  */
void main() {
  runApp(const App());
}

// Root app
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set Light theme
      theme: AppTheme.lightTheme,
      // Set dark theme
      darkTheme: AppTheme.darkTheme,
      // Set default theme (system is based on the phone setting)
      themeMode: ThemeMode.system,
      // Set landing screen
      home: WelcomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [Text(tAppName, style: Theme.of(context).textTheme.headlineLarge)]),
        ),
      ),
    );
  }
}

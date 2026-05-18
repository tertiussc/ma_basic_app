import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/colors.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/constants/sizes.dart';
import 'package:ma_base_app/constants/text_strings.dart';
import 'package:ma_base_app/features/authentication/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // default animated state
  bool animate = false;

  @override
  void initState() {
    // Call function
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: Image(image: AssetImage(tSplashTopIcon), height: 100, width: 100),
          ),
          Positioned(
            top: 80,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headlineLarge),
                Text(tAppTagLine, style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          ),
          Positioned(bottom: 80, child: Image(image: AssetImage(tSplashImage))),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tDefaultSize,
              height: tDefaultSize,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: tPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }

  // Function to run and Update state
  Future startAnimation() async {
    await Future.delayed(Duration(microseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(microseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}

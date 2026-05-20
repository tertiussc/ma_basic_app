import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/shared_widgets/animation_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // get screen height
    double screenHeight = MediaQuery.of(context).size.height;
    // Build screen
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Animate(
            effects: [
              // SlideEffect(delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 2500), begin: Offset(-5, 0), curve: Curves.ease),
              FadeEffect(duration: Duration(milliseconds: 3000)),
              ScaleEffect(duration: Duration(milliseconds: 3000)),
            ],
            child: Image(
              image: AssetImage(tLaud),
              // set image to take up 50% of the screen
              height: screenHeight * 0.5,
            ),
          ),
          Column(
            children: [
              Text('Welcome to Meliorate Africa', style: Theme.of(context).textTheme.headlineMedium),
              Text('Where rubber meets the road.', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(onPressed: () {}, child: Text('Login'.toUpperCase())),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: ElevatedButton(onPressed: () {}, child: Text('Sign Up'.toUpperCase())),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

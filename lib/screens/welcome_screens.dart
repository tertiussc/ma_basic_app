import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/screens/login_screen.dart';
import 'package:ma_base_app/screens/onboarding_screen.dart';
import 'package:ma_base_app/screens/signup_screen.dart';

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
          // Animated Picture
          Animate(
            effects: [
              // SlideEffect(delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 2500), begin: Offset(-5, 0), curve: Curves.ease),
              FadeEffect(duration: Duration(milliseconds: 1500)),
              ScaleEffect(duration: Duration(milliseconds: 1500)),
            ],
            child: InteractiveViewer(
              child: Image(
                image: AssetImage(tLaud),
                // set image to take up 50% of the screen
                height: screenHeight * 0.5,
              ),
            ),
          ),
          Column(
            children: [
              Text('Welcome to Meliorate Africa', style: Theme.of(context).textTheme.headlineMedium),
              Text('Where rubber meets the road.', style: Theme.of(context).textTheme.bodyLarge),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Text('Take a Tour'),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
                    },
                    child: Text('Login'.toUpperCase()),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    },
                    child: Text('Sign Up'.toUpperCase()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

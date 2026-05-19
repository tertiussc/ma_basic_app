import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/screens/welcome_screens.dart';
import 'package:ma_base_app/shared_widgets/swipe_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // Controller variables
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // get device size to force images to be the same
    final deviceSize = MediaQuery.of(context).size;
    // Screen
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: controller,
            onPageChangeCallback: onPageChangeCallback,
            pages: [
              SwipePageWidget(
                deviceSize: deviceSize,
                pageColor: Colors.redAccent.shade100,
                pageImage: tPhone,
                pageTitle: 'Analysis',
                pageText: 'You must know where you are.',
                pageNumber: '1/3',
              ),
              SwipePageWidget(
                deviceSize: deviceSize,
                pageColor: Colors.greenAccent.shade200,
                pageImage: tSwim,
                pageTitle: 'Project Management',
                pageText: 'Manage you projects effectively agile and waterfall.',
                pageNumber: '2/3',
              ),
              SwipePageWidget(
                deviceSize: deviceSize,
                pageColor: Colors.blueAccent.shade200,
                pageImage: tRainbow,
                pageTitle: 'Development',
                pageText: 'Cross device and cross platform apps',
                pageNumber: '3/3',
              ),
            ],
            slideIconWidget: Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
            enableLoop: false,
          ),
          Positioned(
            bottom: 35,
            // left: 15,
            child: ElevatedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                elevation: 15,
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                side: BorderSide(color: Colors.white),
              ),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ),
          // Skip button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                // Old code only used to skip to last page
                // controller.jumpToPage(page: 2);

                // Pop the context so that user cant return
                Navigator.pop(context);
                // push new route
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => WelcomeScreen()));
              },
              child: Text('Skip', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(bottom: 10, child: AnimatedSmoothIndicator(activeIndex: controller.currentPage, count: 3)),
        ],
      ),
    );
  }

  // Method to change page number
  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:ma_base_app/utils/theme.dart';

class SwipePageWidget extends StatelessWidget {
  const SwipePageWidget({
    super.key,
    required this.deviceSize,
    required this.pageColor,
    required this.pageImage,
    required this.pageTitle,
    required this.pageText,
    required this.pageNumber,
  });

  final Size deviceSize;
  final Color pageColor;
  final String pageImage;
  final String pageTitle;
  final String pageText;
  final String pageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(pageImage), height: deviceSize.height * 0.5),
            Column(
              children: [
                // Text('Analyse', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25)),
                Text(pageTitle, style: AppTheme.swipeTitle),
                Text(pageText, style: AppTheme.swipeText),
              ],
            ),
            Text(pageNumber, style: AppTheme.swipeText),
          ],
        ),
      ),
    );
  }
}

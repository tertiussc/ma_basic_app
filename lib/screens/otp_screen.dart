import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ma_base_app/constants/colors.dart';
import 'package:ma_base_app/constants/sizes.dart';
import 'package:ma_base_app/screens/welcome_screens.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CO\nDE', style: GoogleFonts.montserrat(fontSize: 100, fontWeight: FontWeight.bold, height: 0)),
            Text('Please enter the 6 digit code sent to:'),
            Text(
              'tertiussc@gmail.com',
              style: TextStyle(fontStyle: FontStyle.italic, letterSpacing: 1.5, color: tMeliorateRed),
            ),
            SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              focusedBorderColor: tMeliorateRed,
              borderColor: Colors.black,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(title: Text("Verification Code"), content: Text('Code entered is $verificationCode'));
                  },
                );
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/constants/sizes.dart';
import 'package:ma_base_app/screens/otp_screen.dart';
import 'package:ma_base_app/shared_widgets/styled_form_field.dart';
import 'package:ma_base_app/utils/theme.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tDefaultPadding),
          child: Column(
            children: [
              Image(image: AssetImage(tThink)),
              Text('Enter your password to recover your password', style: AppTheme.drawText),
              SizedBox(height: 15),
              Form(
                child: Column(
                  children: [
                    StyledFormField(label: 'Email', icon: Icons.email, textInputType: TextInputType.emailAddress),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                        },
                        child: Text('Send Request'.toUpperCase()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

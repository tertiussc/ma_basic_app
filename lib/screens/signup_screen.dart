import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/colors.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/screens/login_screen.dart';
import 'package:ma_base_app/constants/sizes.dart';
import 'package:ma_base_app/shared_widgets/styled_form_field.dart';
import 'package:ma_base_app/utils/theme.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultPadding),
          child: Column(
            children: [
              SafeArea(child: Image(image: AssetImage(tPhone))),
              Text('Sign Up', style: AppTheme.loginTitle),
              Text('Register your profile to receive full benefits.', style: AppTheme.loginText),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    StyledFormField(label: 'Full Name', icon: Icons.person),
                    StyledFormField(label: 'Email', icon: Icons.email, textInputType: TextInputType.emailAddress),
                    StyledFormField(label: 'Phone', icon: Icons.phone, textInputType: TextInputType.phone),
                    StyledFormField(label: 'Password', icon: Icons.fingerprint, obscureText: true),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: () {}, child: Text('Signup'.toUpperCase())),
                    ),
                    SizedBox(height: 20),
                    Text('OR'),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: SignInButton(
                        Buttons.google,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100)),
                        onPressed: () {},
                      ),
                    ),
                    Row(
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                            // Navigator.pop(context);
                          },
                          child: Text('Signin', style: TextStyle(color: tMeliorateRed)),
                        ),
                      ],
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

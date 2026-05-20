import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/colors.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/constants/sizes.dart';
import 'package:ma_base_app/screens/signup_screen.dart';
import 'package:ma_base_app/shared_widgets/styled_form_field.dart';
import 'package:ma_base_app/utils/theme.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(tDefaultPadding),
            child: Column(
              children: [
                /*First Section */
                Column(
                  children: [
                    Image(image: AssetImage(tRainbow), height: screenSize.height * 0.2),
                    Text('Welcome Back'.toUpperCase(), style: AppTheme.loginTitle),
                    Text('Sign into you account by entering your email and password', style: AppTheme.loginText),
                  ],
                ),
                /*Second Section */
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledFormField(label: 'Email', icon: Icons.person_outlined, textInputType: TextInputType.emailAddress),
                      StyledFormField(label: 'Password', icon: Icons.fingerprint, obscureText: true),
                      TextButton(
                        onPressed: null,
                        child: Text('Forgot Password?', style: TextStyle(color: tMeliorateRed)),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {}, child: Text('Login')),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    Align(alignment: Alignment.bottomLeft, child: Text('OR')),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: SignInButton(
                        Buttons.google,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          child: Text('Signup', style: TextStyle(color: tMeliorateRed)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

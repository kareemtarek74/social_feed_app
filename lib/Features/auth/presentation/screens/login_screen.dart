import 'package:flutter/material.dart';
import 'package:social_feed_app/core/utils/app_colors.dart';
import 'package:social_feed_app/core/utils/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 80),
                    Center(
                      child: Text(
                        'Create an account',
                        style: Styles.styleBold28(
                          context,
                        ).copyWith(fontSize: 27),
                      ),
                    ),
                    SizedBox(height: 20),
                    LoginInputField(label: 'Username'),
                    SizedBox(height: 16),
                    LoginInputField(label: 'Email'),
                    SizedBox(height: 16),
                    LoginInputField(label: 'Password'),
                    SizedBox(height: 20),
                    CustomButton(
                      onPressed: () {},
                      backgroundColor: Colors.blue,
                      label: 'Sign Up',
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      onPressed: () {},
                      backgroundColor: AppColors.primaryColor,
                      label: 'Sign up with Google',
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Already have an account? Log in',
                  style: Styles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0xff4A789C)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.label,
    this.textColor = Colors.white,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(
        label,
        style: Styles.styleBold18(
          context,
        ).copyWith(color: textColor, fontSize: 17),
      ),
    );
  }
}

class LoginInputField extends StatelessWidget {
  const LoginInputField({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 16, color: Color(0xff4A789C)),
        filled: true,
        fillColor: AppColors.primaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

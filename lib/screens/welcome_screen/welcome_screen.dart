import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/screens/onboarding_screen/screen/onboarding_screen.dart';
import 'package:medical_clinic/utils/generic_theme.dart';
import 'package:medical_clinic/widgets/common_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/gradient_app_logo.png"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Health",
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(color: topGradientColor),
                          ),
                          TextSpan(
                            text: "Track",
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(color: topGradientColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      "Login as a user, If don't have an account, do register yourself",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black54,
                        fontFamily: AppTheme.secondaryFontFamily,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CommonButton(text: "Login", isGradientOne: true,onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OnboardingScreen()));
                  }),
                  CommonButton(text: "Sign Up",onPressed: (){},),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/constants/image_constants.dart';
import 'package:medical_clinic/utils/common_gradient.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'or sign up with',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    gradient: commonGradient(),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(ImageConstants.googleImg),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Container(
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      gradient: commonGradient(),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(ImageConstants.fbImg),
                  ),
                ),
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    gradient: commonGradient(),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(ImageConstants.fingerPrintImg),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Don\'t have an account?',
                  style: Theme.of(context).textTheme.labelSmall
                      ?.copyWith(color: Colors.black),
                ),
                TextSpan(
                  text: ' Sign Up',
                  style: Theme.of(context).textTheme.labelSmall
                      ?.copyWith(color: bottomGradientColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

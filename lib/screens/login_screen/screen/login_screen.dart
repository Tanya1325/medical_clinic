import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/screens/forgot_password_screen/screen/forgot_password_screen.dart';
import 'package:medical_clinic/screens/login_screen/widgets/social_buttons.dart';
import 'package:medical_clinic/screens/signup_screen/screen/signup_screen.dart';
import 'package:medical_clinic/utils/common_gradient.dart';
import 'package:medical_clinic/widgets/common_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
            child: Icon(Icons.arrow_back_ios, color: Colors.white)),
        title: Text("Log In", style: Theme.of(context).textTheme.titleLarge),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: commonGradient()),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: bottomGradientColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: Colors.grey),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Email or Mobile Number',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.black),
                    ),
                  ),
                  TextFormField(
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: topGradientColor),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      filled: true,
                      fillColor: textFieldBackgroundColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Password',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.black),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: topGradientColor),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      filled: true,
                      fillColor: textFieldBackgroundColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
                        },
                        child: Text(
                          'Forgot Password',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: bottomGradientColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 12),
              Center(
                child: CommonButton(
                  text: 'Log In',
                  isGradientOne: true,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignupScreen()));
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 12),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

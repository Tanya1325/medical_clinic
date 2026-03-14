import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/screens/login_screen/widgets/social_buttons.dart';
import 'package:medical_clinic/utils/common_gradient.dart';
import 'package:medical_clinic/widgets/common_text_field.dart';
import 'package:medical_clinic/widgets/common_button.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController fullName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController mobileNo = TextEditingController();
  final TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white)),        title: Text(
          "New Account",
          style: Theme.of(context).textTheme.titleLarge,
        ),
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
              CommonTextField(controller: fullName,fieldName: "Full Name"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  "Password",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.black),
                ),
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: password,
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
              CommonTextField(controller: email,fieldName: "Email"),
              CommonTextField(controller: mobileNo,fieldName: "Mobile Number"),
              CommonTextField(controller: dob,fieldName: "Date Of Birth"),
              SizedBox(height: 8.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: Theme.of(context).textTheme.labelSmall
                          ?.copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms of Use',
                      style: Theme.of(context).textTheme.labelSmall
                          ?.copyWith(color: bottomGradientColor),
                    ),
                    TextSpan(
                      text: ' & ',
                      style: Theme.of(context).textTheme.labelSmall
                          ?.copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy',
                      style: Theme.of(context).textTheme.labelSmall
                          ?.copyWith(color: bottomGradientColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Center(
                child: CommonButton(
                  text: 'Sign Up',
                  isGradientOne: true,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 8.0),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

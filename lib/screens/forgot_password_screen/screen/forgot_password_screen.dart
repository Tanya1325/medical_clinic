import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/utils/common_gradient.dart';
import 'package:medical_clinic/widgets/common_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController? passwordController;
  TextEditingController? confirmPwdController;
  ForgotPasswordScreen({super.key});

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
          "Set Password",
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
                controller: passwordController,
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
                child: Text(
                  "Confirm Password",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.black),
                ),
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: confirmPwdController,
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
              SizedBox(height: 8.0),
              Center(
                child: CommonButton(
                  text: 'Create New Password',
                  isGradientOne: true,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

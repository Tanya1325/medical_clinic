import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';

class CommonTextField extends StatelessWidget {
  final String? fieldName;
  final TextEditingController? controller;
  const CommonTextField({super.key, this.controller, this.fieldName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            fieldName ?? "",
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Colors.black),
          ),
        ),
        TextFormField(
          controller: controller,
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
      ],
    );
  }
}

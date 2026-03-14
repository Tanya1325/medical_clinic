import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/utils/common_gradient.dart';
import 'package:medical_clinic/utils/theme/generic_theme.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final bool? isGradientOne;
  final VoidCallback? onPressed;

  const CommonButton({
    super.key,
    this.text,
    this.isGradientOne,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      width: 240.0,
      height: 54.0,
      decoration: BoxDecoration(
        gradient:
            isGradientOne == true
                ? commonGradient()
                : LinearGradient(
                  colors: [Color(0xFFE9F6FE), Color(0xFFE9F6FE)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          text ?? "",
          style:
              isGradientOne == true
                  ? Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: AppTheme.secondaryFontFamily,
                  )
                  : Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: topGradientColor,
                    fontFamily: AppTheme.secondaryFontFamily,
                  ),
        ),
      ),
    );
  }
}

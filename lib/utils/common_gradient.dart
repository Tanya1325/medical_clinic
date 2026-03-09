import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';

LinearGradient commonGradient() {
  return LinearGradient(
    colors: [topGradientColor, bottomGradientColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

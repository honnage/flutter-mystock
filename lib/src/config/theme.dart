import 'package:flutter/cupertino.dart';

class Theme {
  const Theme();

  // static const Color gradientStart = Color(0xFF24c6dc);
  // static const Color gradientEnd = Color(0xFFfff);

  static const Color gradientStart = Color(0xFF514a9d);
  static const Color gradientEnd = Color(0xFF24c6dc);

  // 0xFF24c6dc 0xFF076585 0xFFfff

  static const gradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );
}
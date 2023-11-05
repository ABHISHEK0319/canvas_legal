import 'package:flutter/material.dart';

class CanvasLegalColors {
  CanvasLegalColors._(); // this basically makes it so you can instantiate this class

  static const _primaryValue = 0xFF005067;
  //static const _secondaryValue = 0xFFC0E2EC;

  static const MaterialColor Blue = MaterialColor(
    _primaryValue,
    <int, Color>{
      1: Color(0xFF005067),
      10: Color(0xFFC0E2EC),
    },
  );
}

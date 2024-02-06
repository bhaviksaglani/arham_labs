import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double height = 1.45}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    color: color,
    height: height,
    decoration: decoration,
    fontWeight: fontWeight,
  );
}

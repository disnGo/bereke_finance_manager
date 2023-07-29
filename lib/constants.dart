import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color kScaffoldColor = Color(0xFF212121);
const Color kPrimaryColor = Color(0xFF424242);
const Color kSecondaryColor = Color(0xFF0ABB49);
const Color kTextColor = Color(0xFFFFFFFF);

final kMargin = EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h);
final kPadding = EdgeInsets.all(2.h);
final kRadius = BorderRadius.circular(2.h);

Color setupColor(double percentage) {
  if (percentage >= 0.50) {
    return kScaffoldColor;
  } else if (percentage >= 0.25) {
    return Colors.orange;
  }
  return Colors.red;
}

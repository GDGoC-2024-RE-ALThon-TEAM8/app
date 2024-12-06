import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AnimatedContainer bgBox(double height) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 4280),
    width: 390.w,
    height: height,
    curve: Curves.elasticOut,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(48),
        bottomRight: Radius.circular(48)
      ),
      color: Color(0xFFFCC218)
    ),
  );
}
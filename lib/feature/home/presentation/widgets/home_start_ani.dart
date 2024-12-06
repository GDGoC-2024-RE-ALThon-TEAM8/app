import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AnimatedContainer homeStartAni(bool startAni) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 1880),
    width: startAni ? 100.w : 390.w,
    height: startAni ? 100.w : 880.h,
    curve: Curves.linearToEaseOut,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: const Color(0xFFFCC218)
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team8/helper/constants/app_colors.dart';

@immutable
class AppTypography {
  const AppTypography._();

  /// 서울남산체 Head
  /// 폰트 사이즈 : 24.sp
  /// 자간 : -0.5%
  /// 행간 : 140%
  /// 볼딕
  static final namsanHead = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 24.sp,
    letterSpacing: -0.5,
    fontWeight: FontWeight.bold,
    height: 1.4,
    color: AppColors.black10,
  );

  /// 서울남산체 SubHead
  /// 폰트 사이즈 : 20.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  /// 볼딕
  static final namsanSubHead = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 24.sp,
    letterSpacing: -0.5,
    fontWeight: FontWeight.bold,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 서울남산체 Body1
  /// 폰트 사이즈 : 16.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  /// 볼딕
  static final namsanBody1 = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 16.sp,
    letterSpacing: -0.5,
    fontWeight: FontWeight.bold,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 서울남산체 Body2
  /// 폰트 사이즈 : 16.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  static final namsanBody2 = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 16.sp,
    letterSpacing: -0.5,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 서울남산체 Body3
  /// 폰트 사이즈 : 14.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  /// bold
  static final namsanBody3 = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 14.sp,
    letterSpacing: -0.5,
    height: 1.32,
    fontWeight: FontWeight.bold,
    color: AppColors.black10,
  );

  /// 서울남산체 Body4
  /// 폰트 사이즈 : 14.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  static final namsanBody4 = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 14.sp,
    letterSpacing: -0.5,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 서울남산체 Body5
  /// 폰트 사이즈 : 12.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  static final namsanBody5 = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 12.sp,
    letterSpacing: -0.5,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 서울남산체 caption
  /// 폰트 사이즈 : 10.sp
  /// 자간 : -0.5%
  /// 행간 : 132%
  static final namsanCaption = TextStyle(
    fontFamily: 'SeoulNamsan',
    fontSize: 10.sp,
    letterSpacing: -0.5,
    height: 1.32,
    color: AppColors.black10,
  );


  /*************************달력폰트*************************/


  /// 프리텐다드 title
  /// 폰트 사이즈 : 16.sp
  /// 행간 : 132%
  /// 폰트 굵기 : w500
  static final pretendTitle = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16.sp,
    height: 1.32,
    fontWeight: FontWeight.w500,
    color: AppColors.black10,
  );

  /// 프리텐다드 subtitle
  /// 폰트 사이즈 : 14.sp
  /// 행간 : 132%
  /// 폰트 굵기 : w500
  static final pretendSubTitle = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14.sp,
    height: 1.32,
    fontWeight: FontWeight.w500,
    color: AppColors.black10,
  );

  /// 프리텐다드 body1
  /// 폰트 사이즈 : 14.sp
  /// 행간 : 132%
  static final pretendBody1 = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14.sp,
    height: 1.32,
    color: AppColors.black10,
  );

  /// 프리텐다드 body2
  /// 폰트 사이즈 : 12.sp
  /// 행간 : 132%
  static final pretendBody2 = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12.sp,
    height: 1.32,
    color: AppColors.black10,
  );
}

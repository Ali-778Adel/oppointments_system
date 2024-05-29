import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';

class TextStyles{
  static TextStyles _textStyle=TextStyles._internal();
  TextStyles._internal();


  factory TextStyles(){

   return _textStyle;

  }



  final  TextStyle ?headLineLarge = TextStyle(
      color: ColorPalette.primary100,
      fontFamily: "Inter-Bold.ttf",
      fontWeight: FontWeight.w700,
      fontSize: 32.sp);

  final TextStyle headerMediumBlack =  TextStyle(
    color: ColorPalette.grey100,
    fontFamily: "Inter-Black.ttf",
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );

  final TextStyle headerMediumPrimary = TextStyle(
      color: ColorPalette.primary100,
      fontFamily: "assets/fonts/inter/Inter-Bold.ttf",
      fontWeight: FontWeight.w700,
      fontSize: 24.sp);

  final TextStyle displaySmall = TextStyle(
      color: ColorPalette.grey70,
      fontFamily: "Inter-Regular.ttf",
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  final TextStyle bodyMedium = TextStyle(
      color: ColorPalette.grey70,
      fontFamily: "Inter-Regular.ttf",
      fontSize: 20.sp,
      fontWeight: FontWeight.w400);

  final TextStyle bodySmall = TextStyle(
      color: ColorPalette.grey70,
      fontFamily: "Inter-Regular.ttf",
      fontSize: 10.sp,
      fontWeight: FontWeight.w400);

  final buttonTextMedium = TextStyle(
    color: ColorPalette.white,
    fontFamily: "Inter-SemiBold.ttf",
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  final hintText=TextStyle(
    color: ColorPalette.grey50,
    fontFamily: "Inter-Regular.ttf",
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

}
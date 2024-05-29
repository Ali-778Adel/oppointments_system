import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';

enum TextFieldType{email,password,phoneNumber}
abstract class AuthTextFormField1 extends StatelessWidget {
   final TextFieldType textFieldType;
   final TextEditingController textEditingController;
   final String hintText;

  const AuthTextFormField1(
      { super.key,
        required this.textEditingController,
        required this.hintText, required this.textFieldType});

    bool obscureText();
    String? validator(String ?val);
    List<TextInputFormatter>inputFormatters();
    TextInputType keyBoardType();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: ColorPalette.black),
      obscureText:obscureText(),
      inputFormatters: inputFormatters(),
      validator:validator,
      keyboardType:keyBoardType(),
      decoration: InputDecoration(
          isCollapsed: false,
          contentPadding: EdgeInsets.symmetric(vertical:10.h ,horizontal: 10.w),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.sp)),
              borderSide:  BorderSide(width: 1.sp,color: ColorPalette.grey30),
              gapPadding: 0.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.sp)),
              borderSide: BorderSide(width: 1.sp,color: ColorPalette.grey30,)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.sp)),
              borderSide:BorderSide(width: 1.sp,color: ColorPalette.grey30,)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.sp)),
              borderSide:BorderSide(width: 1.sp,color: ColorPalette.fillRed,)),
          constraints:  BoxConstraints(minHeight:55.h,maxHeight: 150.h ),
          fillColor: ColorPalette.form,
          focusColor:ColorPalette.form ,
          filled: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall),

    );
  }
}

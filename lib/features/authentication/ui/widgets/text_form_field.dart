import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';

class AuthTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const AuthTextFormField(
      {super.key, required this.textEditingController, required this.hintText});

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: widget.textEditingController,
      decoration: InputDecoration(
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


          errorBorder: InputBorder.none,
          constraints:  BoxConstraints(minHeight:55.h,maxHeight: 65.h ),
          fillColor: ColorPalette.form,
          focusColor:ColorPalette.form ,
          filled: true,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: ColorPalette.black),

    );
  }
}

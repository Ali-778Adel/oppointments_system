import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';

class AuthPageBottomText extends StatelessWidget {
  const AuthPageBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(

            text: TextSpan(
          text: "By Logging in you agree our ",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize:12.sp ),
          children: [
            TextSpan(
              text: "terms & condition ",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: ColorPalette.black,fontSize: 12.sp),
              recognizer:TapGestureRecognizer()..onTap=(){
                //
              }
            ),
            TextSpan(text: " and ",style:Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 12.sp), ),
            TextSpan(text: "PrivacyPolicy ",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: ColorPalette.black,fontSize: 12.sp),
                recognizer:TapGestureRecognizer()..onTap=(){
                  //
                }
            ),

          ]
        ),
          textAlign: TextAlign.center,

        ),
        SizedBox(height: 8.h,),
        RichText(text: TextSpan(
          text: "Already have an account? ",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 12.sp),
          children: [
            TextSpan(
              text: " Sign Up",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: ColorPalette.primary100,
                  fontSize: 12.sp
              ),
              recognizer: TapGestureRecognizer()..onTap=(){

              }
            )
          ]
        ))
      ],
    );
  }
}

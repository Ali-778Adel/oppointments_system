import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors/colors.dart';

class LoginSignUpButton extends StatelessWidget {
  final String btnTxt;
  final Function ()onTap;
  const LoginSignUpButton({super.key,required this.btnTxt,required this.onTap });

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style: ButtonStyle(
          padding:
          MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(8.r)),
          backgroundColor:
          MaterialStateProperty.all<Color>(ColorPalette.primary100),
          alignment: Alignment.center,
          maximumSize: MaterialStateProperty.all<Size>(Size(.9.sw, 60.h)),
          minimumSize: MaterialStateProperty.all<Size>(Size(.9.sw, 60.h)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.sp))),
        ),
        onPressed:onTap,
        child: Text(
          btnTxt,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }

}

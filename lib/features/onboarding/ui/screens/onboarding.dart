import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';
import 'package:oppointments_sysytem/core/theming/images/images.dart';
import 'package:oppointments_sysytem/features/onboarding/ui/widgets/background_and_image_widget.dart';
import 'package:oppointments_sysytem/features/onboarding/ui/widgets/get_started_button_widget.dart';
import 'package:oppointments_sysytem/features/onboarding/ui/widgets/logo_label_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
        child:const SingleChildScrollView(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoAndLabelWidget(),
              BackgroundLogoAndImageWidget1(),
              
              GetStartedButtonWidget(),
            ],
=======
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: .95.sh,
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoAndLabelWidget(),
                SizedBox(
                  height: 10.h,
                ),
                const BackgroundLogoAndImageWidget(),
                const GetStartedButtonWidget(),
              ],
            ),
>>>>>>> 8e8151b63ee6917841138b49260cfc5a064f4945
          ),
        ),
      ),
    ));
  }
}

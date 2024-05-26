import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';
import 'package:oppointments_sysytem/core/theming/images/images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(elevation: 0.0,backgroundColor: Colors.transparent,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                MyImages.logo,
                width: 32.sp,
                height: 32.sp,
              ),
              Text(
                'Docdoc',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
            Expanded(
              // flex: 20,
              child: SizedBox(
              height: .8.sh,
              width: 1.sw,
              child: Stack(
                children: [
                  Positioned(
                    top: 50.h,
                    right: 4.0.h,
                    left: -20.w,
                    bottom: 50.sp,
                    child: SvgPicture.asset(
                      MyImages.backgroundLogo,
                      allowDrawingOutsideViewBox: true,
                      alignment: Alignment.center,
                      color: ColorPalette.primary100,
                    ),
                  ),
                  Positioned(
                    top: 50.h,
                    right: 4.0,
                    left: -5.w,
                    bottom: 50.sp,
                    child: Image.asset(
                      MyImages.doctor,
                    ),
                  ),
              
                  /// linear gradiant
                  Positioned(
                      // top:50.h ,
                      right: 4.h,
                      left: 4.w,
                      bottom: 50.sp,
                      child: Container(
                        height: 250.sp,
                        width: 1.sw,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              ColorPalette.white.withOpacity(.10),
                              ColorPalette.white.withOpacity(.30),
                              ColorPalette.white,
                              ColorPalette.white,
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      )),
              
                  ///text
                  Positioned(
                      // top:50.h ,
                      right: 20.w,
                      left: 20.w,
                      bottom: -40.sp,
                      child: Container(
                        height: 200.sp,
                        width: .8.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Best Doctor Appointment App",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
                        ),
            ),
          SizedBox(
            height: 8.sp,
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(8.r)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(ColorPalette.primary100),
                alignment: Alignment.center,
                maximumSize: MaterialStateProperty.all<Size>(Size(.8.sw, 60.h)),
                minimumSize: MaterialStateProperty.all<Size>(Size(.8.sw, 60.h)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r))),
              ),
              onPressed: () {},
              child: Text(
                "Get Started",
                style: Theme.of(context).textTheme.labelMedium,
              ))
        ],
      ),
    ));
  }
}

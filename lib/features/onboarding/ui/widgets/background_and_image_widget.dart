import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors/colors.dart';
import '../../../../core/theming/images/images.dart';

class BackgroundLogoAndImageWidget extends StatelessWidget {
  const BackgroundLogoAndImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     Expanded(
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
    );
  }
}



class BackgroundLogoAndImageWidget1 extends StatelessWidget {
  const BackgroundLogoAndImageWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return     Expanded(
      // flex: 20,
      child: Stack(
        children: [
          SvgPicture.asset(
            MyImages.backgroundLogo,
            allowDrawingOutsideViewBox: true,
            alignment: Alignment.center,
            color: ColorPalette.primary100,
          ),


          /// linear gradiant
          Container(

            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      ColorPalette.white,
                      ColorPalette.white.withOpacity(.10),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  stops:const [.2,.8]
                ),
            ),
            child:   Image.asset(
              MyImages.doctor,
            ) ,
          ),

          ///text
          Positioned(
            // top:50.h ,
              right: 20.w,
              left: 20.w,
              bottom: 6.sp,
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
    );
  }
}

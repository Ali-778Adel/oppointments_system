import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/images/images.dart';

class LogoAndLabelWidget extends StatelessWidget {
  const LogoAndLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );

  }
}

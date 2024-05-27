import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/helper/extensions.dart';
import 'package:oppointments_sysytem/core/routing/routes.dart';

import '../../../../core/theming/colors/colors.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
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
        onPressed: () {
          context.pushNamedRoute( AppRoutes.login);
        },
        child: Text(
          "Get Started",
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}

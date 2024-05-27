import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/routing/routes.dart';
import 'package:oppointments_sysytem/core/routing/routes_config.dart';

import 'core/theming/Themes/lightTheme.dart';
import 'features/onboarding/ui/screens/onboarding.dart';

class DocDocApp extends StatelessWidget {
  final RoutesConfigs routesConfigs;
  const DocDocApp({super.key,required this.routesConfigs});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (ctx,cild){
        ScreenUtil.init(ctx);
        return ScreenUtilInit(
          designSize: const Size(360, 960),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp(

            debugShowCheckedModeBanner: false,
            title: 'Doctor AppointmentS',
            theme: LightTheme().lightTheme,
            initialRoute: AppRoutes.onBoarding,
            onGenerateRoute: routesConfigs.generatingRoutes,

          ),
        );
      },
    );

  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/core/routing/routes_config.dart';


import 'doc_app.dart';

void main()async {
await ScreenUtil.ensureScreenSize();
  runApp(  DocDocApp(routesConfigs: RoutesConfigs(),) );
}




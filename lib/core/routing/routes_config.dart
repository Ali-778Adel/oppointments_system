
import 'package:flutter/material.dart';
import 'package:oppointments_sysytem/core/routing/routes.dart';
import 'package:oppointments_sysytem/features/authentication/ui/screens/login_screen.dart';
import 'package:oppointments_sysytem/features/onboarding/ui/screens/onboarding.dart';

class RoutesConfigs{
  RoutesConfigs();

  Route generatingRoutes(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.onBoarding:{
        return MaterialPageRoute(builder: (_)=>const OnboardingScreen());
      }
      case AppRoutes.login:{
        return MaterialPageRoute(builder: (_)=> const LoginScreen());
      }
      default:{
        return MaterialPageRoute(builder: (_)=>
            Scaffold(body: Center(child:Text("no routes defined",style: Theme.of(_).textTheme.displayMedium,),),));
      }
    }
  }

}
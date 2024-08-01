import 'package:flutter/material.dart';
import 'package:smart_conseil_app/pages/main_home.dart';
import 'package:smart_conseil_app/pages/SpaceChoose.dart';
import 'package:smart_conseil_app/pages/signIn2.dart';
import 'package:smart_conseil_app/pages/signIn3.dart';
import 'package:smart_conseil_app/pages/Bienvenu.dart';
import 'package:smart_conseil_app/pages/AddDevice.dart';
import 'package:smart_conseil_app/pages/AddProfile.dart';
import 'package:smart_conseil_app/pages/ConfirmProfile.dart';
import 'package:smart_conseil_app/pages/AddChild.dart';
import 'package:smart_conseil_app/pages/CongratsWizardEnd.dart';
import 'package:smart_conseil_app/pages/GoDashboard.dart';
import 'package:smart_conseil_app/pages/ChildDashboard.dart';
import 'package:smart_conseil_app/utils/route/page_transtion.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AllRoutesConstant.mainhomeRoute:
        return slidePageRoute( MainHome());
      case AllRoutesConstant.SpaceChoose:
        return slidePageRoute( SpaceChoose());
      case AllRoutesConstant.SignIn2:
        return slidePageRoute( SignIn2());
      case AllRoutesConstant.SignIn3:
        return slidePageRoute( SignIn3());
      case AllRoutesConstant.Bienvenu:
        return slidePageRoute( Bienvenu());
      case AllRoutesConstant.Adddevice:
        return slidePageRoute( Adddevice());
      case AllRoutesConstant.AddProfile:
        return slidePageRoute( AddProfile());
      case AllRoutesConstant.ConfirmProfile:
        return slidePageRoute( ConfirmProfile());
      case AllRoutesConstant.AddChild:
      return slidePageRoute( AddChild());
      case AllRoutesConstant.CongratsWizardEnd:
        return slidePageRoute( CongratsWizardEnd());
      case AllRoutesConstant.GoDashboard:
        return slidePageRoute( GoDashboard());
      case AllRoutesConstant.ChildDashboard:
        return slidePageRoute( ChildDashboard());






      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No route found'),
            ),
          ),
        );
    }
  }
}

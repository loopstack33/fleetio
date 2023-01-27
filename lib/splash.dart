import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fleetioapp/enums/color_constants.dart';
import 'package:fleetioapp/enums/image_constants.dart';
import 'package:fleetioapp/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
          backgroundColor: mainColor,
          splash: Image.asset(logo),
          nextScreen: const Dashboard(),
          splashTransition: SplashTransition.slideTransition,
        )
    );
  }
}

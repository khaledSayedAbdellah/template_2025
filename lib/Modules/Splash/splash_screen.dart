import 'package:rush/responsive/responsive_layout.dart';

import 'ScreensLayout/l_splash_screen.dart';
import 'ScreensLayout/m_splash_screen.dart';
import 'ScreensLayout/s_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RushWidget(
      smallScreen: SmallSplashScreen(),
      mediumScreen: MediumSplashScreen(),
      largeScreen: LargeSplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:state_extended/state_extended.dart';
import '../../../generated/assets.dart';
import '../splash_controller.dart';

class MediumSplashScreen extends StatefulWidget {
  const MediumSplashScreen({super.key});

  @override
  State createState() => _MediumSplashScreenState();
}

class _MediumSplashScreenState extends StateX<MediumSplashScreen> {
  _MediumSplashScreenState() : super(controller: SplashController()) {
    con = SplashController();
  }

  late SplashController con;


  @override
  void initState() {
    con.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.iconsBrush, width: 240.r, height: 240.r,),
            SizedBox(height: 100.h,),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
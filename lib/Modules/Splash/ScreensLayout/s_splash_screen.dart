import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:state_extended/state_extended.dart';
import '../../../generated/assets.dart';
import '../splash_controller.dart';

class SmallSplashScreen extends StatefulWidget {
  const SmallSplashScreen({super.key});

  @override
  State createState() => _SmallSplashScreenState();
}

class _SmallSplashScreenState extends StateX<SmallSplashScreen> {
  _SmallSplashScreenState() : super(controller: SplashController()) {
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

import 'package:flutter/cupertino.dart';
import '../Splash/splash_data_handler.dart';
import 'package:state_extended/state_extended.dart';
import '../../Utilities/shared_preferences.dart';

class SplashController extends StateXController {
  // singleton
  factory SplashController() {
    _this ??= SplashController._();
    return _this!;
  }
  static SplashController? _this;
  SplashController._();



  Future init(BuildContext context)async{
    final result = await SplashDataHandler.getCurrentUser();

    result.fold((l){}, (r){});
    await Future.delayed(const Duration(seconds: 2));
    if(context.mounted) {
      if(SharedPref.isLogin()){
        // GoRouter.of(context).goNamed(HomeScreen.routeName);
      }else{
        // GoRouter.of(context).go(LoginScreen.routeName);
      }
    }
  }
}

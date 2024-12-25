import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


class GitIt{
  static final GetIt instance = GetIt.I..allowReassignment = true;

  static Future initGitIt()async{
    final sharedPrefs = await SharedPreferences.getInstance();
    instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs,);
  }
}

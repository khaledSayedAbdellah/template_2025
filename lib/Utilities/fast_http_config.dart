
import 'package:fast_http/fast_http.dart';
import 'package:template_2025/Utilities/shared_preferences.dart';

class FastHttpConfig{


  static void init(){
    FastHttp.initialize(
      genericDataKey: "data",
      checkStatusKey: "status",
      getErrorMessageFromResponse: (dynamic response)=> response.toString(),
      onGetResponseStatusCode: (int statusCode){
        switch (statusCode) {
          case 302: {break;} // the requested resource has been temporarily moved to the URL in the Location header
          case 403: {break;} // forbidden—you don't have permission to access this resource
          case 401: {break;} // Unauthorized
          case 503: {break;} // server is too busy or is temporarily down for maintenance.y
        }
      },
    );

    FastHttpHeader().addHeader("Accept", "*/*");
    FastHttpHeader().addHeader("content-type", "application/json");
    FastHttpHeader().addDynamicHeader("token", ()async=> SharedPref.getCurrentUser()?.token??"");
  }

}
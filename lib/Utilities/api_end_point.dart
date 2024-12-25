
import '../Models/server_model.dart';

class APIEndPoint{
  static final ServerModel _apiServer = ServerModel(serverIsSecured: false, host: "api.temp.live", apiPrefix: "api",);
  static String get _baseURL => _apiServer.baseUrl;



  //=========================== api User ====================================
  static String get test => "${_baseURL}todos";
}




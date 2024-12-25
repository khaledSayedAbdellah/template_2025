import 'package:fast_http/core/API/generic_request.dart';
import 'package:fast_http/core/API/request_method.dart';
import 'package:fast_http/core/Error/exceptions.dart';
import 'package:fast_http/core/Error/failures.dart';
import '../../Models/user_model.dart';
import '../../Utilities/api_end_point.dart';

class SplashDataHandler{
  static Future<Either<Failure,UserModel>> getCurrentUser()async{
    try {
      UserModel response = await GenericRequest<UserModel>(
        method: RequestApi.get(url: APIEndPoint.test),
        fromMap: (data)=> UserModel.fromJson(data),
      ).getObject();
      return Right(response);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel));
    }
  }
}
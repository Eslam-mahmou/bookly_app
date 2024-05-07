import 'package:dio/dio.dart';

abstract class Failuar {
  final String errMessage;
  Failuar(this.errMessage);
}

class ServerFailure extends Failuar {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with apiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with apiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with apiServer');
      case DioExceptionType.badCertificate:

      case DioExceptionType.badResponse:
        return ServerFailure.BadfromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Requst to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('no internet connection ,please try again');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error ,please try later!');
      default:
        return ServerFailure('Opps there was an error ,please try again');
    }
  }
  factory ServerFailure.BadfromResponse(int statusCode, dynamic response) {
    if ((statusCode == 400 || statusCode == 401 || statusCode == 403)) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure('Your Requst not found please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later!');
    } else {
      return ServerFailure('Opps there was an error ,please try again');
    }
  }
}

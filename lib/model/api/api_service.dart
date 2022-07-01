import 'package:dio/dio.dart';

class APIService {
  Dio dio = Dio();
  APIService() {
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
}

import 'package:dio/dio.dart';
import 'package:mobileapp/model/register_model.dart';

class RegisterAPI {
  Future<RegisterResponse> getRegisterResponse() async {
    try {
      final response = await Dio().get('https://api.myjson.com/bins/1cq8zk');
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      return RegisterResponse(
        status: 'error',
        code: 0,
        message: 'Something went wrong',
        data: null,
      );
    }
  }
}

import 'package:dio/dio.dart';
import 'package:mobileapp/model/register_model.dart';

class RegisterAPI {
  Future<RegisterResponse> getRegisterResponse(RegisterRequest request) async {
    try {
      final response = await Dio().post(
        'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/register',
        data: request,
      );
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

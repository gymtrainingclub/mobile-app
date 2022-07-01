import 'package:dio/dio.dart';
import 'package:mobileapp/model/login_model.dart';

import 'api_service.dart';

class LoginAPI {
  Future<LoginResponse> getLoginResponse(String email, String password) async {
    try {
      final response = await APIService().dio.post(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/login',
            data: LoginRequest(
              email: email,
              password: '',
            ),
          );
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      return LoginResponse(
        status: 'error',
        code: 0,
        message: 'Something went wrong',
        data: null,
      );
    }
  }
}

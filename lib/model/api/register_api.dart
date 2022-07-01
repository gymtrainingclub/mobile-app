// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:mobileapp/model/register_model.dart';

import 'api_service.dart';

class RegisterAPI {
  Future<RegisterResponse> getRegisterResponse(RegisterRequest request) async {
    try {
      final response = await APIService().dio.post(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/register',
            data: request,
          );
      print('Get Register Response: ${response.data}');
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      print('Get Register Response Error: $e');
      return RegisterResponse(
        status: 'error',
        code: 0,
        message: 'Something went wrong',
        data: null,
      );
    }
  }
}

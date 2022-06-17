import 'package:dio/dio.dart';
import 'package:mobileapp/model/verify_model.dart';

class VerifyAPI {
  Future<VerifyResponse> getVerifyResponse(String token) async {
    try {
      // final response = await Dio().get(
      //   'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/verify/',
      //   queryParameters: {
      //     'token': token,
      //   },
      // );
      final response = await Dio().get(
        'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/verify/$token',
      );
      return VerifyResponse.fromJson(response.data);
    } catch (e) {
      // print(e);
      return VerifyResponse(
        status: 'error',
        code: 0,
        message: 'Something went wrong',
        data: null,
      );
    }
  }
}

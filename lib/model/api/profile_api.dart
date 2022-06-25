import 'package:dio/dio.dart';
import 'package:mobileapp/model/profile_model.dart';

class ProfileAPI {
  Future<ProfileGetResponse> getProfileGetResponse() async {
    try {
      final response = await Dio().get(
        'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/profile',
      );
      return ProfileGetResponse.fromJson(response.data);
    } catch (e) {
      return ProfileGetResponse(
        status: 'error',
        code: 500,
        message: 'Internal Server Error',
        data: null,
      );
    }
  }
}

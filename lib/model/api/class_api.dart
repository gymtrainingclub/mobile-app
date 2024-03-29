// ignore_for_file: avoid_print

import 'package:mobileapp/model/api/api_service.dart';

import '../class_model.dart';

class ClassAPI {
  Future<ClassGetResponse> getClassGetResponse() async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/class',
          );
      return ClassGetResponse.fromJson(response.data);
    } catch (e) {
      return ClassGetResponse(
        status: 'error',
        code: 500,
        message: 'Internal Server Error',
        data: null,
      );
    }
  }

  Future<ClassGetByIdResponse> getClassGetByIdResponse(int id) async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/class/$id',
          );
      return ClassGetByIdResponse.fromJson(response.data);
    } catch (e) {
      return ClassGetByIdResponse(
        code: 500,
        message: 'Internal Server Error',
        status: 'error',
        data: null,
      );
    }
  }
}

import 'package:dio/dio.dart';

import '../category_model.dart';

class CategoryAPI {
  Future<CategoryGetResponse> getCategoryGetResponse() async {
    try {
      final response = await Dio().get(
        'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/category',
      );
      return CategoryGetResponse.fromJson(response.data);
    } catch (e) {
      return CategoryGetResponse(
        status: 'error',
        code: 500,
        message: 'Internal Server Error',
        data: null,
      );
    }
  }
}

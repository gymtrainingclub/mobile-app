import '../category_model.dart';
import 'api_service.dart';

class CategoryAPI {
  Future<CategoryGetResponse> getCategoryGetResponse() async {
    try {
      final response = await APIService().dio.get(
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

  Future<CategoryGetByIdResponse> getCategoryGetByIdResponse(int id) async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/category/$id',
          );
      return CategoryGetByIdResponse.fromJson(response.data);
    } catch (e) {
      return CategoryGetByIdResponse(
        code: 500,
        message: 'Internal Server Error',
        status: 'error',
        data: null,
      );
    }
  }
}

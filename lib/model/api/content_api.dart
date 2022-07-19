import '../n_content_model.dart';
import 'api_service.dart';

class ContentAPI {
  Future<GetAllContentResponse> getContent(String contentId) async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/content/$contentId',
          );
      return GetAllContentResponse.fromJson(response.data);
    } catch (e) {
      return GetAllContentResponse(
        code: 500,
        message: 'Internal Server Error',
        status: 'error',
        data: null,
      );
    }
  }
}

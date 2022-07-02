import '../newsletter_model.dart';
import 'api_service.dart';

class NewsletterAPI {
  Future<NewsletterGetResponse> getNewsletterGetResponse() async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/newsletter',
          );
      return NewsletterGetResponse.fromJson(response.data);
    } catch (e) {
      return NewsletterGetResponse(
        status: 'error',
        code: 500,
        message: 'Internal Server Error',
        data: null,
      );
    }
  }
}

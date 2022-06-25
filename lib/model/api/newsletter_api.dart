import 'package:dio/dio.dart';

import '../newsletter_model.dart';

class NewsletterAPI {
  Future<NewsletterGetResponse> getNewsletterGetResponse() async {
    try {
      final response = await Dio().get(
        'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/newletter',
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

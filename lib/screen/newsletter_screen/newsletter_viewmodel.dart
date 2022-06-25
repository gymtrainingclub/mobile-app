import 'package:flutter/widgets.dart';
import 'package:mobileapp/model/newsletter_model.dart';

import '../../model/api/newsletter_api.dart';

enum NewsletterViewState {
  initial,
  loading,
  loaded,
  error,
}

class NewsletterViewModel with ChangeNotifier {
  NewsletterViewState _state = NewsletterViewState.initial;
  NewsletterViewState get state => _state;

  changeState(NewsletterViewState state) {
    _state = state;
    notifyListeners();
  }

  NewsletterGetResponse _newsletterGetResponse = NewsletterGetResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );

  NewsletterGetResponse get newsletterGetResponse => _newsletterGetResponse;

  getHomeGetResponse() async {
    changeState(NewsletterViewState.loading);
    try {
      final newsletterGetResponse =
          await NewsletterAPI().getNewsletterGetResponse();
      _newsletterGetResponse = newsletterGetResponse;
      changeState(NewsletterViewState.loaded);
    } catch (e) {
      changeState(NewsletterViewState.error);
    }
  }
}

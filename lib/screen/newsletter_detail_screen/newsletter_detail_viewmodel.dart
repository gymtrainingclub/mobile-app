import 'package:flutter/material.dart';
import 'package:mobileapp/model/newsletter_model.dart';

import '../../model/api/newsletter_api.dart';

enum NewsletterDetailViewState {
  loading,
  loaded,
  error,
  initial,
}

class NewsletterDetailViewModel with ChangeNotifier {
  NewsletterDetailViewState _state = NewsletterDetailViewState.initial;
  NewsletterDetailViewState get state => _state;

  changeState(NewsletterDetailViewState state) {
    _state = state;
    notifyListeners();
  }

  NewsletterGetByIdResponse _newsletterGetByIdResponse =
      NewsletterGetByIdResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );

  NewsletterGetByIdResponse get newsletterGetByIdResponse =>
      _newsletterGetByIdResponse;

  getNewsletterGetByIdResponse(int id) async {
    changeState(NewsletterDetailViewState.loading);
    try {
      final newsletterGetByIdResponse =
          await NewsletterAPI().getNewsletterGetByIdResponse(id);
      _newsletterGetByIdResponse = newsletterGetByIdResponse;
      changeState(NewsletterDetailViewState.loaded);
    } catch (e) {
      changeState(NewsletterDetailViewState.error);
    }
  }
}

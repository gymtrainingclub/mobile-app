import 'package:flutter/material.dart';

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

  // NewsletterDetailGetResponse _newsletterDetailGetResponse =
  //     NewsletterDetailGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // NewsletterDetailGetResponse get newsletterDetailGetResponse =>
  //     _newsletterDetailGetResponse;

  // getNewsletterDetailGetResponse() async {
  //   changeState(NewsletterDetailViewState.loading);
  //   try {
  //     final newsletterDetailGetResponse =
  //         await NewsletterDetailAPI().getNewsletterDetailGetResponse();
  //     _newsletterDetailGetResponse = newsletterDetailGetResponse;
  //     changeState(NewsletterDetailViewState.loaded);
  //   } catch (e) {
  //     changeState(NewsletterDetailViewState.error);
  //   }
  // }
}

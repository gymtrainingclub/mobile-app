// ignore_for_file: prefer_final_fields, must_call_super
import 'package:flutter/material.dart';
import 'package:mobileapp/model/verify_model.dart';

import '../../model/api/verify_api.dart';

enum LogoViewState {
  idle,
  busy,
  error,
  success,
  initial,
  loading,
  loaded,
}

class LogoViewModel with ChangeNotifier {
  LogoViewState _state = LogoViewState.initial;
  LogoViewState get state => _state;
  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    notifyListeners();
  }

  changeState(LogoViewState state) {
    _state = state;
    notifyListeners();
  }

  VerifyResponse _verifyresponse = VerifyResponse(
    status: '',
    code: 0,
    message: '',
    data: Data(
      name: '',
      email: '',
      verifiedAt: '',
    ),
  );

  VerifyResponse get verifyresponse => _verifyresponse;

  getVerifyResponse(String token) async {
    changeState(LogoViewState.loading);
    try {
      final verifyresponse = await VerifyAPI().getVerifyResponse(token);
      _verifyresponse = verifyresponse;
      changeState(LogoViewState.loaded);
    } catch (e) {
      changeState(LogoViewState.error);
    }
  }
}

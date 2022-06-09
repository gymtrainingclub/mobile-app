// ignore_for_file: prefer_final_fields, must_call_super

import 'package:flutter/material.dart';

import '../../model/api/login_api.dart';
import '../../model/login_model.dart';

enum LoginViewState {
  initial,
  loading,
  loaded,
  error,
}

class LoginViewModel with ChangeNotifier {
  LoginViewState _state = LoginViewState.initial;
  LoginViewState get state => _state;

  changeState(LoginViewState state) {
    _state = state;
    notifyListeners();
  }

  LoginResponse _loginresponse = LoginResponse(
    status: '',
    code: 0,
    message: '',
    data: Data(
      name: '',
      email: '',
      token: '',
    ),
  );

  LoginResponse get loginresponse => _loginresponse;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  getLoginResponse(String email, String password) async {
    changeState(LoginViewState.loading);
    try {
      final loginresponse = await LoginAPI().getLoginResponse(email, password);
      _loginresponse = loginresponse;
      changeState(LoginViewState.loaded);
    } catch (e) {
      changeState(LoginViewState.error);
    }
  }
}

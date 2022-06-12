// ignore_for_file: prefer_final_fields, must_call_super

import 'package:flutter/widgets.dart';

import 'package:mobileapp/model/register_model.dart';

import '../../model/api/register_api.dart';

enum RegisterViewState {
  initial,
  loading,
  loaded,
  error,
}

class RegisterViewModel with ChangeNotifier {
  RegisterViewState _state = RegisterViewState.initial;
  RegisterViewState get state => _state;

  changeState(RegisterViewState state) {
    _state = state;
    notifyListeners();
  }

  RegisterResponse _registerResponse = RegisterResponse(
    status: '',
    code: 0,
    message: '',
    data: Data(
      name: '',
      gender: '',
      handphone: '',
      createdAt: '',
    ),
  );

  RegisterResponse get registerResponse => _registerResponse;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var handphoneController = TextEditingController();
  var cityController = TextEditingController();
  var genderController = TextEditingController();

  RegisterRequest _registerRequest = RegisterRequest(
    name: '',
    gender: '',
    handphone: '',
    city: '',
    email: '',
    password: '',
    confirmPassword: '',
  );

  RegisterRequest get registerRequest => _registerRequest;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    handphoneController.dispose();
    cityController.dispose();
    genderController.dispose();
  }

  register() async {
    changeState(RegisterViewState.loading);
    _registerRequest = RegisterRequest(
      name: nameController.text,
      city: cityController.text,
      confirmPassword: confirmPasswordController.text,
      email: emailController.text,
      gender: genderController.text,
      handphone: handphoneController.text,
      password: passwordController.text,
    );
    try {
      final registerresponse =
          await RegisterAPI().getRegisterResponse(registerRequest);
      _registerResponse = registerresponse;
      changeState(RegisterViewState.loaded);
      // dispose();
    } catch (e) {
      changeState(RegisterViewState.error);
    }
  }
}

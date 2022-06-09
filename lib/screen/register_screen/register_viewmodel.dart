import 'package:flutter/widgets.dart';

import 'package:mobileapp/model/register_model.dart';

enum RegisterViewState {
  initial,
  loading,
  loaded,
  error,
}

class RegisterViewModel with ChangeNotifier {
  RegisterViewState _state = RegisterViewState.loaded;
  RegisterViewState get state => _state;

  changeState(RegisterViewState state) {
    _state = state;
    notifyListeners();
  }

  // ignore: prefer_final_fields
  RegisterResponse _registerresponse = RegisterResponse(
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

  RegisterResponse get registerresponse => _registerresponse;
}

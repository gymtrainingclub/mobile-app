import 'package:flutter/material.dart';

import '../../model/api/profile_api.dart';
import '../../model/profile_model.dart';

enum MyProfileViewState {
  initial,
  loading,
  loaded,
  error,
}

class MyProfileViewModel with ChangeNotifier {
  MyProfileViewState _state = MyProfileViewState.initial;
  MyProfileViewState get state => _state;

  changeState(MyProfileViewState state) {
    _state = state;
    notifyListeners();
  }

  ProfileGetResponse _myProfileGetResponse = ProfileGetResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );

  ProfileGetResponse get myProfileGetResponse => _myProfileGetResponse;

  getMyProfileGetResponse() async {
    changeState(MyProfileViewState.loading);
    try {
      final myProfileGetResponse = await ProfileAPI().getProfileGetResponse();
      _myProfileGetResponse = myProfileGetResponse;
      changeState(MyProfileViewState.loaded);
    } catch (e) {
      changeState(MyProfileViewState.error);
    }
  }
}

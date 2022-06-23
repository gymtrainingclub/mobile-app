import 'package:flutter/material.dart';
import 'package:mobileapp/model/profile_model.dart';

import '../../model/api/profile_api.dart';

enum HomeViewState {
  initial,
  loading,
  loaded,
  error,
}

class HomeViewModel with ChangeNotifier {
  HomeViewState _state = HomeViewState.initial;
  HomeViewState get state => _state;

  changeState(HomeViewState state) {
    _state = state;
    notifyListeners();
  }

  ProfileGetResponse _profileGetResponse = ProfileGetResponse(
    status: '',
    code: 0,
    message: '',
    data: Data(
      name: '',
      email: '',
      city: '',
      createdAt: '',
      updatedAt: '',
      gender: '',
      handphone: '',
      id: 0,
      member: Member(
        description: '',
        id: 0,
        limitedClass: 0,
        limitedTime: 0,
        name: '',
      ),
      photo: '',
      status: 0,
      verifiedAt: '',
    ),
  );

  ProfileGetResponse get profileGetResponse => _profileGetResponse;

  getProfileGetResponse(String email, String password) async {
    changeState(HomeViewState.loading);
    try {
      final profileGetResponse = await ProfileAPI().getProfileGetResponse(
        email,
        password,
      );
      _profileGetResponse = profileGetResponse;
      changeState(HomeViewState.loaded);
    } catch (e) {
      changeState(HomeViewState.error);
    }
  }
}

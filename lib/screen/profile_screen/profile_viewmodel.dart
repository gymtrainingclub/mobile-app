import 'package:flutter/material.dart';

enum ProfileViewState {
  initial,
  loading,
  loaded,
  error,
}

class ProfileViewModel with ChangeNotifier {
  ProfileViewState _state = ProfileViewState.initial;
  ProfileViewState get state => _state;

  changeState(ProfileViewState state) {
    _state = state;
    notifyListeners();
  }

  // ProfileGetResponse _profileGetResponse =
  //     ProfileGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // ProfileGetResponse get profileGetResponse => _profileGetResponse;

  // getProfileGetResponse() async {
  //   changeState(ProfileViewState.loading);
  //   try {
  //     final profileGetResponse =
  //         await ProfileAPI().getProfileGetResponse();
  //     _profileGetResponse = profileGetResponse;
  //     changeState(ProfileViewState.loaded);
  //   } catch (e) {
  //     changeState(ProfileViewState.error);
  //   }
  // }
}

import 'package:flutter/material.dart';

enum AdminProfileViewModelState {
  initial,
  loading,
  loaded,
  error,
}

class AdminProfileViewModel with ChangeNotifier {
  AdminProfileViewModelState _state = AdminProfileViewModelState.initial;
  AdminProfileViewModelState get state => _state;

  changeState(AdminProfileViewModelState state) {
    _state = state;
    notifyListeners();
  }

  // AdminProfileGetResponse _adminProfileGetResponse =
  //     AdminProfileGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminProfileGetResponse get adminProfileGetResponse =>
  //     _adminProfileGetResponse;

  // getAdminProfileGetResponse() async {
  //   changeState(AdminProfileViewModelState.loading);
  //   try {
  //     final adminProfileGetResponse =
  //         await AdminProfileAPI().getAdminProfileGetResponse();
  //     _adminProfileGetResponse = adminProfileGetResponse;
  //     changeState(AdminProfileViewModelState.loaded);
  //   } catch (e) {
  //     changeState(AdminProfileViewModelState.error);
  //   }
  // }
}

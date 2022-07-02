import 'package:flutter/material.dart';

enum AdminContentViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminContentViewModel with ChangeNotifier {
  AdminContentViewState _state = AdminContentViewState.initial;
  AdminContentViewState get state => _state;

  changeState(AdminContentViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminContentGetResponse _adminContentGetResponse =
  //     AdminContentGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminContentGetResponse get adminContentGetResponse =>
  //     _adminContentGetResponse;

  // getAdminContentGetResponse() async {
  //   changeState(AdminContentViewState.loading);
  //   try {
  //     final adminContentGetResponse =
  //         await AdminContentAPI().getAdminContentGetResponse();
  //     _adminContentGetResponse = adminContentGetResponse;
  //     changeState(AdminContentViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminContentViewState.error);
  //   }
  // }
}

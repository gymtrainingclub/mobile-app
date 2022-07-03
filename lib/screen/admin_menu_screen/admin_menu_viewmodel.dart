import 'package:flutter/material.dart';

enum AdminMenuViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminMenuViewModel with ChangeNotifier {
  AdminMenuViewState _state = AdminMenuViewState.initial;
  AdminMenuViewState get state => _state;

  changeState(AdminMenuViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminMenuGetResponse _adminMenuGetResponse =
  //     AdminMenuGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminMenuGetResponse get adminMenuGetResponse => _adminMenuGetResponse;

  // getAdminMenuGetResponse() async {
  //   changeState(AdminMenuViewState.loading);
  //   try {
  //     final adminMenuGetResponse =
  //         await AdminMenuAPI().getAdminMenuGetResponse();
  //     _adminMenuGetResponse = adminMenuGetResponse;
  //     changeState(AdminMenuViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminMenuViewState.error);
  //   }
  // }
}

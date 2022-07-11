import 'package:flutter/material.dart';

enum AdminClassesViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminClassesViewModel with ChangeNotifier {
  AdminClassesViewState _state = AdminClassesViewState.initial;
  AdminClassesViewState get state => _state;

  String _menu = '';
  String get menu => _menu;

  set menu(String value) {
    _menu = value;
    notifyListeners();
  }

  changeMenu(String value) {
    _menu = value;
    notifyListeners();
  }

  changeState(AdminClassesViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminClassesGetResponse _adminClassesGetResponse =
  //     AdminClassesGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminClassesGetResponse get adminClassesGetResponse =>
  //     _adminClassesGetResponse;

  // getAdminClassesGetResponse() async {
  //   changeState(AdminClassesViewState.loading);
  //   try {
  //     final adminClassesGetResponse =
  //         await AdminClassesAPI().getAdminClassesGetResponse();
  //     _adminClassesGetResponse = adminClassesGetResponse;
  //     changeState(AdminClassesViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminClassesViewState.error);
  //   }
  // }
}

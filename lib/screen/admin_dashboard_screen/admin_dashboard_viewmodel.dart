import 'package:flutter/material.dart';

enum AdminDashboardViewModelState {
  initial,
  loading,
  loaded,
  error,
}

class AdminDashboardViewModel with ChangeNotifier {
  AdminDashboardViewModelState _state = AdminDashboardViewModelState.initial;
  AdminDashboardViewModelState get state => _state;

  changeState(AdminDashboardViewModelState state) {
    _state = state;
    notifyListeners();
  }

  // AdminDashboardGetResponse _adminDashboardGetResponse =
  //     AdminDashboardGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminDashboardGetResponse get adminDashboardGetResponse =>
  //     _adminDashboardGetResponse;

  // getAdminDashboardGetResponse() async {
  //   changeState(AdminDashboardViewModelState.loading);
  //   try {
  //     final adminDashboardGetResponse =
  //         await AdminDashboardAPI().getAdminDashboardGetResponse();
  //     _adminDashboardGetResponse = adminDashboardGetResponse;
  //     changeState(AdminDashboardViewModelState.loaded);
  //   } catch (e) {
  //     changeState(AdminDashboardViewModelState.error);
  //   }
  // }
}

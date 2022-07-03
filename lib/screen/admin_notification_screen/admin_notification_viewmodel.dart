import 'package:flutter/material.dart';

enum AdminNotificationViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminNotificationViewModel with ChangeNotifier {
  AdminNotificationViewState _state = AdminNotificationViewState.initial;
  AdminNotificationViewState get state => _state;

  changeState(AdminNotificationViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminNotificationGetResponse _adminNotificationGetResponse =
  //     AdminNotificationGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminNotificationGetResponse get adminNotificationGetResponse =>
  //     _adminNotificationGetResponse;

  // getAdminNotificationGetResponse() async {
  //   changeState(AdminNotificationViewState.loading);
  //   try {
  //     final adminNotificationGetResponse =
  //         await AdminNotificationAPI().getAdminNotificationGetResponse();
  //     _adminNotificationGetResponse = adminNotificationGetResponse;
  //     changeState(AdminNotificationViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminNotificationViewState.error);
  //   }
  // }
}

import 'package:flutter/material.dart';

enum NotificationViewState {
  initial,
  loading,
  loaded,
  error,
}

class NotificationViewModel with ChangeNotifier {
  NotificationViewState _state = NotificationViewState.initial;
  NotificationViewState get state => _state;

  changeState(NotificationViewState state) {
    _state = state;
    notifyListeners();
  }

  // NotificationGetResponse _notificationGetResponse =
  //     NotificationGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // NotificationGetResponse get notificationGetResponse => _notificationGetResponse;

  // getNotificationGetResponse() async {
  //   changeState(NotificationViewState.loading);
  //   try {
  //     final notificationGetResponse =
  //         await NotificationAPI().getNotificationGetResponse();
  //     _notificationGetResponse = notificationGetResponse;
  //     changeState(NotificationViewState.loaded);
  //   } catch (e) {
  //     changeState(NotificationViewState.error);
  //   }
  // }
}

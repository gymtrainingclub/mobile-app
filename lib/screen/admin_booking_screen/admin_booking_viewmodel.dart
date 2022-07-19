import 'package:flutter/material.dart';

enum AdminBookingViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminBookingViewModel with ChangeNotifier {
  AdminBookingViewState _state = AdminBookingViewState.initial;
  AdminBookingViewState get state => _state;

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

  changeState(AdminBookingViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminBookingGetResponse _adminBookingGetResponse =
  //     AdminBookingGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminBookingGetResponse get adminBookingGetResponse =>
  //     _adminBookingGetResponse;

  // getAdminBookingGetResponse() async {
  //   changeState(AdminBookingViewState.loading);
  //   try {
  //     final adminBookingGetResponse =
  //         await AdminBookingAPI().getAdminBookingGetResponse();
  //     _adminBookingGetResponse = adminBookingGetResponse;
  //     changeState(AdminBookingViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminBookingViewState.error);
  //   }
  // }
}

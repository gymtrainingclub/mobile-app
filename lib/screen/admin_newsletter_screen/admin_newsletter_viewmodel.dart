import 'package:flutter/material.dart';

enum AdminNewsletterViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminNewsletterViewModel with ChangeNotifier {
  AdminNewsletterViewState _state = AdminNewsletterViewState.initial;
  AdminNewsletterViewState get state => _state;

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

  changeState(AdminNewsletterViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminNewsletterGetResponse _adminNewsletterGetResponse =
  //     AdminNewsletterGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminNewsletterGetResponse get adminNewsletterGetResponse =>
  //     _adminNewsletterGetResponse;

  // getAdminNewsletterGetResponse() async {
  //   changeState(AdminNewsletterViewState.loading);
  //   try {
  //     final adminNewsletterGetResponse =
  //         await AdminNewsletterAPI().getAdminNewsletterGetResponse();
  //     _adminNewsletterGetResponse = adminNewsletterGetResponse;
  //     changeState(AdminNewsletterViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminNewsletterViewState.error);
  //   }
  // }
}

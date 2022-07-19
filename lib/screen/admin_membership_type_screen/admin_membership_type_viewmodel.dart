import 'package:flutter/material.dart';

enum AdminMembershipTypeViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminMembershipTypeViewModel with ChangeNotifier {
  AdminMembershipTypeViewState _state = AdminMembershipTypeViewState.initial;
  AdminMembershipTypeViewState get state => _state;

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

  changeState(AdminMembershipTypeViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminMembershipTypeGetResponse _adminMembershipTypeGetResponse =
  //     AdminMembershipTypeGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminMembershipTypeGetResponse get adminMembershipTypeGetResponse =>
  //     _adminMembershipTypeGetResponse;

  // getAdminMembershipTypeGetResponse() async {
  //   changeState(AdminMembershipTypeViewState.loading);
  //   try {
  //     final adminMembershipTypeGetResponse =
  //         await AdminMembershipTypeAPI().getAdminMembershipTypeGetResponse();
  //     _adminMembershipTypeGetResponse = adminMembershipTypeGetResponse;
  //     changeState(AdminMembershipTypeViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminMembershipTypeViewState.error);
  //   }
  // }
}

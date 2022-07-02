import 'package:flutter/material.dart';

enum AdminMembershipViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminMembershipViewModel with ChangeNotifier {
  AdminMembershipViewState _state = AdminMembershipViewState.initial;
  AdminMembershipViewState get state => _state;

  changeState(AdminMembershipViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminMembershipGetResponse _adminMembershipGetResponse =
  //     AdminMembershipGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminMembershipGetResponse get adminMembershipGetResponse =>
  //     _adminMembershipGetResponse;

  // getAdminMembershipGetResponse() async {
  //   changeState(AdminMembershipViewState.loading);
  //   try {
  //     final adminMembershipGetResponse =
  //         await AdminMembershipAPI().getAdminMembershipGetResponse();
  //     _adminMembershipGetResponse = adminMembershipGetResponse;
  //     changeState(AdminMembershipViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminMembershipViewState.error);
  //   }
  // }
}

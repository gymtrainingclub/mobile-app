import 'package:flutter/material.dart';

enum AdminAdministratorViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminAdministratorViewModel with ChangeNotifier {
  AdminAdministratorViewState _state = AdminAdministratorViewState.initial;
  AdminAdministratorViewState get state => _state;

  changeState(AdminAdministratorViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminAdministratorGetResponse _adminAdministratorGetResponse =
  //     AdminAdministratorGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminAdministratorGetResponse get adminAdministratorGetResponse =>
  //     _adminAdministratorGetResponse;

  // getAdminAdministratorGetResponse() async {
  //   changeState(AdminAdministratorViewState.loading);
  //   try {
  //     final adminAdministratorGetResponse =
  //         await AdminAdministratorAPI().getAdminAdministratorGetResponse();
  //     _adminAdministratorGetResponse = adminAdministratorGetResponse;
  //     changeState(AdminAdministratorViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminAdministratorViewState.error);
  //   }
  // }
}

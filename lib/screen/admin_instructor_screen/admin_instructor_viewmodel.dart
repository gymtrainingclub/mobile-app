import 'package:flutter/material.dart';

enum AdminInstructorViewState {
  initial,
  loading,
  loaded,
  error,
}

class AdminInstructorViewModel with ChangeNotifier {
  AdminInstructorViewState _state = AdminInstructorViewState.initial;
  AdminInstructorViewState get state => _state;

  changeState(AdminInstructorViewState state) {
    _state = state;
    notifyListeners();
  }

  // AdminInstructorGetResponse _adminInstructorGetResponse =
  //     AdminInstructorGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminInstructorGetResponse get adminInstructorGetResponse =>
  //     _adminInstructorGetResponse;

  // getAdminInstructorGetResponse() async {
  //   changeState(AdminInstructorViewState.loading);
  //   try {
  //     final adminInstructorGetResponse =
  //         await AdminInstructorAPI().getAdminInstructorGetResponse();
  //     _adminInstructorGetResponse = adminInstructorGetResponse;
  //     changeState(AdminInstructorViewState.loaded);
  //   } catch (e) {
  //     changeState(AdminInstructorViewState.error);
  //   }
  // }
}

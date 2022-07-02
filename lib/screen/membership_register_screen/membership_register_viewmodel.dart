import 'package:flutter/material.dart';

enum MembershipRegisterViewState {
  initial,
  loading,
  loaded,
  error,
}

class MembershipRegisterViewModel with ChangeNotifier {
  MembershipRegisterViewState _state = MembershipRegisterViewState.initial;
  MembershipRegisterViewState get state => _state;

  changeState(MembershipRegisterViewState state) {
    _state = state;
    notifyListeners();
  }

  // MembershipRegisterPostResponse _membershipRegisterPostResponse =
  //     MembershipRegisterPostResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // MembershipRegisterPostResponse get membershipRegisterPostResponse =>
  //     _membershipRegisterPostResponse;

  // getMembershipRegisterPostResponse() async {
  //   changeState(MembershipRegisterViewState.loading);
  //   try {
  //     final membershipRegisterPostResponse =
  //         await MembershipRegisterAPI().getMembershipRegisterPostResponse();
  //     _membershipRegisterPostResponse = membershipRegisterPostResponse;
  //     changeState(MembershipRegisterViewState.loaded);
  //   } catch (e) {
  //     changeState(MembershipRegisterViewState.error);
  //   }
  // }
}

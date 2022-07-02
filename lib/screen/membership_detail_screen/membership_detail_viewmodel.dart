import 'package:flutter/material.dart';

enum MembershipDetailViewState {
  loading,
  loaded,
  error,
  initial,
}

class MembershipDetailViewModel with ChangeNotifier {
  MembershipDetailViewState _state = MembershipDetailViewState.initial;
  MembershipDetailViewState get state => _state;

  changeState(MembershipDetailViewState state) {
    _state = state;
    notifyListeners();
  }

  // MembershipDetailGetResponse _membershipDetailGetResponse =
  //     MembershipDetailGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // MembershipDetailGetResponse get membershipDetailGetResponse =>
  //     _membershipDetailGetResponse;

  // getMembershipDetailGetResponse() async {
  //   changeState(MembershipDetailViewState.loading);
  //   try {
  //     final membershipDetailGetResponse =
  //         await MembershipDetailAPI().getMembershipDetailGetResponse();
  //     _membershipDetailGetResponse = membershipDetailGetResponse;
  //     changeState(MembershipDetailViewState.loaded);
  //   } catch (e) {
  //     changeState(MembershipDetailViewState.error);
  //   }
  // }
}

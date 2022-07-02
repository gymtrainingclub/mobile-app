import 'package:flutter/material.dart';

enum MembershipPaymentViewState {
  initial,
  loading,
  loaded,
  error,
}

class MembershipPaymentViewModel with ChangeNotifier {
  MembershipPaymentViewState _state = MembershipPaymentViewState.initial;
  MembershipPaymentViewState get state => _state;

  changeState(MembershipPaymentViewState state) {
    _state = state;
    notifyListeners();
  }

  // MembershipPaymentGetResponse _membershipPaymentGetResponse =
  //     MembershipPaymentGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // MembershipPaymentGetResponse get membershipPaymentGetResponse =>
  //     _membershipPaymentGetResponse;

  // getMembershipPaymentGetResponse() async {
  //   changeState(MembershipPaymentViewState.loading);
  //   try {
  //     final membershipPaymentGetResponse =
  //         await MembershipPaymentAPI().getMembershipPaymentGetResponse();
  //     _membershipPaymentGetResponse = membershipPaymentGetResponse;
  //     changeState(MembershipPaymentViewState.loaded);
  //   } catch (e) {
  //     changeState(MembershipPaymentViewState.error);
  //   }
  // }
}

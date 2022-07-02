import 'package:flutter/material.dart';

enum MyMembershipViewState {
  initial,
  loading,
  loaded,
  error,
}

class MyMembershipViewModel with ChangeNotifier {
  MyMembershipViewState _state = MyMembershipViewState.initial;
  MyMembershipViewState get state => _state;

  changeState(MyMembershipViewState state) {
    _state = state;
    notifyListeners();
  }

  // MyMembershipGetResponse _myMembershipGetResponse =
  //     MyMembershipGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // MyMembershipGetResponse get myMembershipGetResponse =>
  //     _myMembershipGetResponse;

  // getMyMembershipGetResponse() async {
  //   changeState(MyMembershipViewState.loading);
  //   try {
  //     final myMembershipGetResponse =
  //         await MyMembershipAPI().getMyMembershipGetResponse();
  //     _myMembershipGetResponse = myMembershipGetResponse;
  //     changeState(MyMembershipViewState.loaded);
  //   } catch (e) {
  //     changeState(MyMembershipViewState.error);
  //   }
  // }
}

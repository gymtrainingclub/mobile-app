import 'package:flutter/widgets.dart';

enum MembershipViewState {
  initial,
  loading,
  payment,
  loaded,
  error,
}

class MembershipViewModel with ChangeNotifier {
  MembershipViewState _state = MembershipViewState.initial;
  MembershipViewState get state => _state;
  String _methodPayment = '';
  String get methodPayment => _methodPayment;
  set methodPayment(String value) {
    _methodPayment = value;
    notifyListeners();
  }

  changeState(MembershipViewState state) {
    _state = state;
    notifyListeners();
  }
}

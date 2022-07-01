import 'package:flutter/widgets.dart';

enum MembershipViewState {
  initial,
  loading,
  loaded,
  error,
}

class MembershipViewModel with ChangeNotifier {
  MembershipViewState _state = MembershipViewState.initial;
  MembershipViewState get state => _state;

  changeState(MembershipViewState state) {
    _state = state;
    notifyListeners();
  }
}

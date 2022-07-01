import 'package:flutter/material.dart';

enum ClassBookingViewState {
  initial,
  loading,
  loaded,
  error,
}

class ClassBookingViewModel with ChangeNotifier {
  ClassBookingViewState _state = ClassBookingViewState.initial;
  ClassBookingViewState get state => _state;

  changeState(ClassBookingViewState state) {
    _state = state;
    notifyListeners();
  }

  set state(ClassBookingViewState state) {
    _state = state;
    notifyListeners();
  }
}

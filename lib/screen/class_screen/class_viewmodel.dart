import 'package:flutter/material.dart';
import 'package:mobileapp/model/api/class_api.dart';
import 'package:mobileapp/model/class_model.dart';

enum ClassViewState {
  initial,
  loading,
  loaded,
  error,
}

class ClassViewModel with ChangeNotifier {
  ClassViewState _state = ClassViewState.initial;
  ClassViewState get state => _state;

  set state(ClassViewState state) {
    _state = state;
    notifyListeners();
  }

  changeState(ClassViewState state) {
    _state = state;
    notifyListeners();
  }

  ClassGetByIdResponse _classGetByIdResponse = ClassGetByIdResponse(
    code: 0,
    message: '',
    status: '',
    data: null,
  );

  ClassGetByIdResponse get classGetByIdResponse => _classGetByIdResponse;

  getClassById(int id) async {
    changeState(ClassViewState.loading);
    try {
      final response = await ClassAPI().getClassGetByIdResponse(id);
      _classGetByIdResponse = response;
      changeState(ClassViewState.loaded);
    } catch (e) {
      changeState(ClassViewState.error);
    }
  }
}

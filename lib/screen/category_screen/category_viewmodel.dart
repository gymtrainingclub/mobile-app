// ignore_for_file: prefer_final_fields

import 'package:flutter/widgets.dart';
import 'package:mobileapp/model/api/class_api.dart';
import 'package:mobileapp/model/category_model.dart';
import 'package:mobileapp/model/class_model.dart';

import '../../model/api/category_api.dart';

enum CategoryViewState {
  initial,
  loading,
  loaded,
  error,
}

class CategoryViewModel with ChangeNotifier {
  CategoryViewState _state = CategoryViewState.initial;
  CategoryViewState get state => _state;

  set state(CategoryViewState state) {
    _state = state;
    notifyListeners();
  }

  changeState(CategoryViewState state) {
    _state = state;
    notifyListeners();
  }

  CategoryGetByIdResponse _categoryGetByIdResponse = CategoryGetByIdResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );
  CategoryGetByIdResponse get categoryGetByIdResponse =>
      _categoryGetByIdResponse;

  ClassGetByIdResponse _classGetByIdResponse = ClassGetByIdResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );

  ClassGetResponse _classGetResponse = ClassGetResponse(
    status: '',
    code: 0,
    message: '',
    data: null,
  );

  ClassGetResponse get classGetResponse => _classGetResponse;

  ClassGetByIdResponse get classGetByIdResponse => _classGetByIdResponse;

  getClassGetByCategoryIdResponse(int id) async {
    changeState(CategoryViewState.loading);
    try {
      final CategoryGetByIdResponse categoryGetByIdResponse =
          await CategoryAPI().getCategoryGetByIdResponse(id);
      final ClassGetResponse classGetResponse =
          await ClassAPI().getClassGetResponse();
      _categoryGetByIdResponse = categoryGetByIdResponse;
      _classGetResponse = classGetResponse;
      changeState(CategoryViewState.loaded);
    } catch (e) {
      changeState(CategoryViewState.error);
    }
  }
}

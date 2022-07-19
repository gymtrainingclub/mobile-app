import 'package:flutter/material.dart';

enum AdminCategoryViewModelState {
  loading,
  loaded,
  error,
  intial,
}

class AdminCategoryViewModel with ChangeNotifier {
  AdminCategoryViewModelState _state = AdminCategoryViewModelState.intial;
  AdminCategoryViewModelState get state => _state;

  String _menu = '';
  String get menu => _menu;

  set menu(String value) {
    _menu = value;
    notifyListeners();
  }

  changeMenu(String value) {
    _menu = value;
    notifyListeners();
  }

  changeState(AdminCategoryViewModelState state) {
    _state = state;
    notifyListeners();
  }

  // AdminCategoryGetResponse _adminCategoryGetResponse =
  //     AdminCategoryGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // AdminCategoryGetResponse get adminCategoryGetResponse =>
  //     _adminCategoryGetResponse;

  // getAdminCategoryGetResponse() async {
  //   changeState(AdminCategoryViewModelState.loading);
  //   try {
  //     final adminCategoryGetResponse =
  //         await AdminCategoryAPI().getAdminCategoryGetResponse();
  //     _adminCategoryGetResponse = adminCategoryGetResponse;
  //     changeState(AdminCategoryViewModelState.loaded);
  //   } catch (e) {
  //     changeState(AdminCategoryViewModelState.error);
  //   }
  // }
}

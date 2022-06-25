// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:mobileapp/model/category_model.dart';
import 'package:mobileapp/model/class_model.dart';
import 'package:mobileapp/model/profile_model.dart';

import '../../model/api/category_api.dart';
import '../../model/api/class_api.dart';
import '../../model/api/profile_api.dart';

enum HomeViewState {
  initial,
  loading,
  loaded,
  error,
}

class HomeViewModel with ChangeNotifier {
  HomeViewState _state = HomeViewState.initial;
  HomeViewState get state => _state;

  changeState(HomeViewState state) {
    _state = state;
    notifyListeners();
  }

  ProfileGetResponse _profileGetResponse = ProfileGetResponse(
    status: '',
    code: 0,
    message: '',
    data: DataProfileGetResponse(
      name: '',
      email: '',
      city: '',
      createdAt: '',
      updatedAt: '',
      gender: '',
      handphone: '',
      id: 0,
      member: Member(
        description: '',
        id: 0,
        limitedClass: 0,
        limitedTime: 0,
        name: '',
      ),
      photo: '',
      status: 0,
      verifiedAt: '',
    ),
  );

  CategoryGetResponse _categoryGetResponse = CategoryGetResponse(
    status: '',
    code: 0,
    message: '',
    data: <DataCategoryGetResponse>[
      DataCategoryGetResponse(
        id: 0,
        name: '',
        description: '',
        createdAt: '',
        updatedAt: '',
        image: '',
      ),
    ],
  );

  ClassGetResponse _classGetResponse = ClassGetResponse(
    status: '',
    code: 0,
    message: '',
    data: <DataClassGetResponse>[
      DataClassGetResponse(
        id: 0,
        name: '',
        description: '',
        createdAt: '',
        updatedAt: '',
        image: '',
        category: Category(
          id: 0,
          name: '',
          description: '',
          image: '',
        ),
        address: '',
        price: 0,
        createdBy: '',
        duration: 0,
        instructor: InstructorClassGetResponse(
          id: 0,
          name: '',
          photo: '',
          email: '',
          gender: '',
          handphone: '',
        ),
        latitude: '',
        location: '',
        longitude: '',
        startDate: '',
        status: 0,
        type: '',
        updatedBy: '',
      ),
    ],
  );

  ProfileGetResponse get profileGetResponse => _profileGetResponse;

  CategoryGetResponse get categoryGetResponse => _categoryGetResponse;

  ClassGetResponse get classGetResponse => _classGetResponse;

  getHomeGetResponse() async {
    changeState(HomeViewState.loading);
    try {
      final profileGetResponse = await ProfileAPI().getProfileGetResponse();
      final categoryGetResponse = await CategoryAPI().getCategoryGetResponse();
      final classGetResponse = await ClassAPI().getClassGetResponse();
      _profileGetResponse = profileGetResponse;
      _categoryGetResponse = categoryGetResponse;
      _classGetResponse = classGetResponse;
      changeState(HomeViewState.loaded);
    } catch (e) {
      changeState(HomeViewState.error);
    }
  }
}

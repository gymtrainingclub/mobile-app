import 'package:flutter/material.dart';

enum ScheduleDetailViewState {
  initial,
  loading,
  loaded,
  error,
}

class ScheduleDetailViewModel with ChangeNotifier {
  ScheduleDetailViewState _state = ScheduleDetailViewState.initial;
  ScheduleDetailViewState get state => _state;

  changeState(ScheduleDetailViewState state) {
    _state = state;
    notifyListeners();
  }

  // ScheduleDetailGetResponse _scheduleDetailGetResponse =
  //     ScheduleDetailGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );
  // ScheduleDetailGetResponse get scheduleDetailGetResponse =>
  //     _scheduleDetailGetResponse;

  // getScheduleDetailGetResponse() async {
  //   changeState(ScheduleDetailViewState.loading);
  //   try {
  //     final scheduleDetailGetResponse =
  //         await ScheduleDetailAPI().getScheduleDetailGetResponse();
  //     _scheduleDetailGetResponse = scheduleDetailGetResponse;
  //     changeState(ScheduleDetailViewState.loaded);
  //   } catch (e) {
  //     changeState(ScheduleDetailViewState.error);
  //   }
  // }
}

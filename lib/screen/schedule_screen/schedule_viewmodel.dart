import 'package:flutter/material.dart';

enum ScheduleViewState {
  initial,
  loading,
  loaded,
  error,
}

class ScheduleViewModel with ChangeNotifier {
  ScheduleViewState _state = ScheduleViewState.initial;
  ScheduleViewState get state => _state;

  changeState(ScheduleViewState state) {
    _state = state;
    notifyListeners();
  }

  // ScheduleGetResponse _scheduleGetResponse = ScheduleGetResponse(
  //   status: '',
  //   code: 0,
  //   message: '',
  //   data: null,
  // );

  // ScheduleGetResponse get scheduleGetResponse => _scheduleGetResponse;

  // getScheduleGetResponse() async {
  //   changeState(ScheduleViewState.loading);
  //   try {
  //     final scheduleGetResponse = await ScheduleAPI().getScheduleGetResponse();
  //     _scheduleGetResponse = scheduleGetResponse;
  //     changeState(ScheduleViewState.loaded);
  //   } catch (e) {
  //     changeState(ScheduleViewState.error);
  //   }
  // }
}

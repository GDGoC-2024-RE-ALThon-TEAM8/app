import 'dart:async';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team8/helper/extensions/showdialog_helper.dart';

part 'home_viewmodel.g.dart';

class HomeViewModelState {
  HomeViewModelState({
    required this.pinLeftTime,
    required this.startAni,
    required this.recording,
    required this.recorderController,
    required this.textEditingController
  });

  String pinLeftTime;
  bool startAni;
  bool recording;
  RecorderController recorderController;

  TextEditingController textEditingController;
}

@riverpod
class HomeViewModelController extends _$HomeViewModelController {
  late Timer _timer;
  int elasTime = 0;
  String m4aFilePath = "";

  @override
  HomeViewModelState build() {
    return HomeViewModelState(
      pinLeftTime: "00:00:00",
      startAni: false,
      recording: false,
      recorderController: RecorderController(),
      textEditingController: TextEditingController()
    );
  }

  void setState() {
    state = HomeViewModelState(
      pinLeftTime: state.pinLeftTime,
      startAni: state.startAni,
      recording: state.recording,
      recorderController: state.recorderController,
      textEditingController: state.textEditingController
    );
  }

  void handleRecording() async {
    state.recording = !state.recording;
    if(state.recording) {
      state.recorderController.record();
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) async {
        elasTime += 10;
        state.pinLeftTime = formatTime(elasTime);
        setState();
      });
    } else {
      m4aFilePath = await state.recorderController.stop() ?? "";
      elasTime = 0;
      _timer.cancel();
      ShowDialogHelper.showLoading();
      Future.delayed(const Duration(milliseconds: 2400), (){
        ShowDialogHelper.closeLoading();
      });
    }
    setState();
  }

  void handleSend() {
    print(m4aFilePath);
  }

  void startAnimation() {
    state.startAni = true;
    setState();
  }
}

String formatTime(int milliseconds) {
  final minutes = ((milliseconds ~/ 1000) ~/ 60).toString().padLeft(2, '0');
  final seconds = ((milliseconds ~/ 1000) % 60).toString().padLeft(2, '0');
  final millis = ((milliseconds % 1000) ~/ 10).toString().padLeft(2, '0');
  return "$minutes:$seconds:$millis";
}
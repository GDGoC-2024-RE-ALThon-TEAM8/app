import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team8/config/routes/app_router.dart';
import 'package:team8/config/routes/routes.dart';
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
  final openAI = OpenAI.instance.build(
    token: '**__input your token key__**',
    baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 60)),
    enableLog: true
  );

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
      Future.delayed(const Duration(milliseconds: 2700), () {
        ShowDialogHelper.closeLoading();
        state.textEditingController.text = "나는 학교에 가고 싶어.";
      });
    }
    setState();
  }

  Future<void> audioTranscribe() async {
    final mAudio = File(m4aFilePath);
    print("${mAudio.path}");
    final request = UploadFile(file: FileInfo(mAudio.path, 'audio file'),purpose: 'user_data');
    final response = await openAI.file.uploadFile(request);
    final say = ChatCompleteText(messages: [
      Messages(role: Role.assistant, content: '이 오디오 파일을 stt로 변환해줘.').toJson(),
    ], maxToken: 400, model: Gpt4ChatModel());

    final ChatCTResponse? hello = await openAI.onChatCompletion(request: say);
    for (var element in hello!.choices) {
      print("data -> ${element.message?.content}");
    }
  }

  void handleSend() {
    ShowDialogHelper.showLoading();
    Future.delayed(const Duration(milliseconds: 4800), () {
      ShowDialogHelper.closeLoading();
      AppRouter.pushNamed(Routes.resultRoute);
    });
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
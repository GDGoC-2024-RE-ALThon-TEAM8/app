import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team8/feature/result/data/datasource/result_datasource.dart';
import 'package:team8/feature/result/data/model/result_model.dart';
import 'package:team8/feature/result/data/model/wrong_detail_model.dart';
import 'package:team8/helper/constants/app_mp4.dart';
import 'package:video_player/video_player.dart';

part 'result_viewmodel.g.dart';

class ResultViewModelState {
  ResultViewModelState({
    required this.dataList,
    required this.wrongList,
    required this.videoController
  });

  List<ResultModel> dataList;
  List<WrongDetailModel> wrongList;
  VideoPlayerController videoController;
}

@Riverpod(keepAlive: true)
class ResultViewModelController extends _$ResultViewModelController {
  @override
  ResultViewModelState build() {
    return ResultViewModelState(
      dataList: [],
      wrongList: [],
      videoController: VideoPlayerController.asset(AppMp4.video)
    );
  }

  void setState() {
    state = ResultViewModelState(
      dataList: state.dataList,
      wrongList: state.wrongList,
      videoController: state.videoController
    );
  }

  void getResultData() async {
    final response = await ResultDatasource().getResultData();
    if(response != null) {
      state.dataList.add(response);
    }
    for(int i = 0; i < state.dataList.length; i++) {
      for(int j = 0; j < state.dataList[i].wrong_syllable.length; j++) {
        final wrongResponse = ResultDatasource().resizeWrongDetailModel(state.dataList[i].wrong_syllable[j]);
        if(wrongResponse != null) {
          state.wrongList.add(wrongResponse);
        }
      }
    }
    setState();
  }

  void playVideo() {
    state.videoController.play();
  }
}
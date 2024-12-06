import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'result_viewmodel.g.dart';

class ResultViewModelState {
  ResultViewModelState({
    required this.dataList
  });

  List dataList;
}

@Riverpod(keepAlive: true)
class ResultViewModelController extends _$ResultViewModelController {
  @override
  ResultViewModelState build() {
    return ResultViewModelState(
      dataList: []
    );
  }

  void setState() {
    state = ResultViewModelState(
      dataList: state.dataList
    );
  }
}
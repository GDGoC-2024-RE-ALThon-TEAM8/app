import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team8/feature/result/data/model/wrong_detail_model.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    required String correct_sentence,
    required String tts_sentence,
    required List wrong_syllable
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);
}
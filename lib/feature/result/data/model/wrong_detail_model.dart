import 'package:freezed_annotation/freezed_annotation.dart';

part 'wrong_detail_model.freezed.dart';
part 'wrong_detail_model.g.dart';

@freezed
class WrongDetailModel with _$WrongDetailModel {
  factory WrongDetailModel({
    required String syllable,
    required String modification_of_pronunciation,
    required String how_to_improve,
  }) = _WrongDetailModel;

  factory WrongDetailModel.fromJson(Map<String, dynamic> json) => _$WrongDetailModelFromJson(json);
}
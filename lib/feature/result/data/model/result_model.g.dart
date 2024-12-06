// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      correct_sentence: json['correct_sentence'] as String,
      tts_sentence: json['tts_sentence'] as String,
      wrong_syllable: json['wrong_syllable'] as List<dynamic>,
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'correct_sentence': instance.correct_sentence,
      'tts_sentence': instance.tts_sentence,
      'wrong_syllable': instance.wrong_syllable,
    };

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:team8/feature/result/data/model/result_model.dart';
import 'package:team8/feature/result/data/model/wrong_detail_model.dart';

@immutable 
class ResultDatasource {
  Future<ResultModel?> getResultData() async {
    final response = """
{
  "correct_sentence": "나는 학교에 가고 싶어",
  "tts_sentence": "너느 하고아 갸거 서러",
  "wrong_syllable": [
    {
      "syllable": "너느",
      "modification_of_pronunciation": "나는",
      "how_to_improve": "입술을 살짝 내밀고 '나'를 발음합니다. '나'는 입술을 약간 둥글게 말고 짧게 발음하며, '는'은 혀끝을 앞니 뒤에 살짝 대고 짧게 발음합니다. '너'는 입술을 둥글게 말고 '느'는 혀끝을 입천장에 붙였다 떼는 동작이 필요하지만, '나는'에서는 이러한 동작이 필요 없습니다. '나'의 모음에 집중하고 '는'은 짧게 발음하는 연습을 합니다."
    },
    {
      "syllable": "하고아",
      "modification_of_pronunciation": "학교에",
      "how_to_improve": "'학'은 혀의 뒷부분을 입천장에 붙였다가 떼면서 발음합니다. '교'는 입을 살짝 벌리고 혀의 중간 부분을 입천장에 가볍게 대고 발음합니다. '에'는 입을 살짝 벌리고 혀를 편평하게 하여 발음합니다.  '하'와 '고'를 따로 발음하지 않고 자연스럽게 연결하여 발음하는 연습이 필요합니다. '아'는 입을 크게 벌리지 않고 자연스럽게 발음하는 연습을 합니다. '학교'를 하나의 단어로 인식하고 발음 연습을 하세요."
    },
    {
      "syllable": "갸거",
      "modification_of_pronunciation": "가고",
      "how_to_improve": "'가'는 혀를 앞으로 내밀지 않고 입을 살짝 벌려 발음합니다. '고'는 혀의 뒷부분을 입천장에 가볍게 대고 발음합니다. '갸'는 혀를 입천장쪽으로 높이 올리는 발음이지만, '가'는 혀의 위치가 더 낮습니다. 혀의 위치에 주의하며 '가'와 '고'를 자연스럽게 연결하여 발음하는 연습을 합니다."
    },
    {
      "syllable": "서러",
      "modification_of_pronunciation": "싶어",
      "how_to_improve": "'싶'은 입술을 살짝 내밀고 '싶' 소리를 내고, '어'는 입을 살짝 벌리고 혀를 편평하게 하여 발음합니다. '서'는 혀의 위치가 '싶'과 다릅니다.  입술 모양과 혀의 위치에 신경 쓰면서 '싶어'를 부드럽게 발음하는 연습을 합니다.  '싶'과 '어'를 연결하여 발음하는 연습을 합니다."
    }
  ]
}
    """;

    final Map<String, dynamic> jsonResponse = jsonDecode(response);
    return ResultModel.fromJson(jsonResponse);
  }

  WrongDetailModel? resizeWrongDetailModel(Map<String, dynamic> response) {
    return WrongDetailModel.fromJson(response);
  }
}
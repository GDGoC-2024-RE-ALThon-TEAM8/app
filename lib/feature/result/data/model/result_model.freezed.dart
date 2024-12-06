// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  String get correct_sentence => throw _privateConstructorUsedError;
  String get tts_sentence => throw _privateConstructorUsedError;
  List<dynamic> get wrong_syllable => throw _privateConstructorUsedError;

  /// Serializes this ResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {String correct_sentence,
      String tts_sentence,
      List<dynamic> wrong_syllable});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct_sentence = null,
    Object? tts_sentence = null,
    Object? wrong_syllable = null,
  }) {
    return _then(_value.copyWith(
      correct_sentence: null == correct_sentence
          ? _value.correct_sentence
          : correct_sentence // ignore: cast_nullable_to_non_nullable
              as String,
      tts_sentence: null == tts_sentence
          ? _value.tts_sentence
          : tts_sentence // ignore: cast_nullable_to_non_nullable
              as String,
      wrong_syllable: null == wrong_syllable
          ? _value.wrong_syllable
          : wrong_syllable // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String correct_sentence,
      String tts_sentence,
      List<dynamic> wrong_syllable});
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct_sentence = null,
    Object? tts_sentence = null,
    Object? wrong_syllable = null,
  }) {
    return _then(_$ResultModelImpl(
      correct_sentence: null == correct_sentence
          ? _value.correct_sentence
          : correct_sentence // ignore: cast_nullable_to_non_nullable
              as String,
      tts_sentence: null == tts_sentence
          ? _value.tts_sentence
          : tts_sentence // ignore: cast_nullable_to_non_nullable
              as String,
      wrong_syllable: null == wrong_syllable
          ? _value._wrong_syllable
          : wrong_syllable // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl implements _ResultModel {
  _$ResultModelImpl(
      {required this.correct_sentence,
      required this.tts_sentence,
      required final List<dynamic> wrong_syllable})
      : _wrong_syllable = wrong_syllable;

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  @override
  final String correct_sentence;
  @override
  final String tts_sentence;
  final List<dynamic> _wrong_syllable;
  @override
  List<dynamic> get wrong_syllable {
    if (_wrong_syllable is EqualUnmodifiableListView) return _wrong_syllable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wrong_syllable);
  }

  @override
  String toString() {
    return 'ResultModel(correct_sentence: $correct_sentence, tts_sentence: $tts_sentence, wrong_syllable: $wrong_syllable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            (identical(other.correct_sentence, correct_sentence) ||
                other.correct_sentence == correct_sentence) &&
            (identical(other.tts_sentence, tts_sentence) ||
                other.tts_sentence == tts_sentence) &&
            const DeepCollectionEquality()
                .equals(other._wrong_syllable, _wrong_syllable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correct_sentence, tts_sentence,
      const DeepCollectionEquality().hash(_wrong_syllable));

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  factory _ResultModel(
      {required final String correct_sentence,
      required final String tts_sentence,
      required final List<dynamic> wrong_syllable}) = _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  String get correct_sentence;
  @override
  String get tts_sentence;
  @override
  List<dynamic> get wrong_syllable;

  /// Create a copy of ResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

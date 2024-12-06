// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wrong_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WrongDetailModel _$WrongDetailModelFromJson(Map<String, dynamic> json) {
  return _WrongDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WrongDetailModel {
  String get syllable => throw _privateConstructorUsedError;
  String get modification_of_pronunciation =>
      throw _privateConstructorUsedError;
  String get how_to_improve => throw _privateConstructorUsedError;

  /// Serializes this WrongDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WrongDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WrongDetailModelCopyWith<WrongDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WrongDetailModelCopyWith<$Res> {
  factory $WrongDetailModelCopyWith(
          WrongDetailModel value, $Res Function(WrongDetailModel) then) =
      _$WrongDetailModelCopyWithImpl<$Res, WrongDetailModel>;
  @useResult
  $Res call(
      {String syllable,
      String modification_of_pronunciation,
      String how_to_improve});
}

/// @nodoc
class _$WrongDetailModelCopyWithImpl<$Res, $Val extends WrongDetailModel>
    implements $WrongDetailModelCopyWith<$Res> {
  _$WrongDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WrongDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syllable = null,
    Object? modification_of_pronunciation = null,
    Object? how_to_improve = null,
  }) {
    return _then(_value.copyWith(
      syllable: null == syllable
          ? _value.syllable
          : syllable // ignore: cast_nullable_to_non_nullable
              as String,
      modification_of_pronunciation: null == modification_of_pronunciation
          ? _value.modification_of_pronunciation
          : modification_of_pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      how_to_improve: null == how_to_improve
          ? _value.how_to_improve
          : how_to_improve // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WrongDetailModelImplCopyWith<$Res>
    implements $WrongDetailModelCopyWith<$Res> {
  factory _$$WrongDetailModelImplCopyWith(_$WrongDetailModelImpl value,
          $Res Function(_$WrongDetailModelImpl) then) =
      __$$WrongDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String syllable,
      String modification_of_pronunciation,
      String how_to_improve});
}

/// @nodoc
class __$$WrongDetailModelImplCopyWithImpl<$Res>
    extends _$WrongDetailModelCopyWithImpl<$Res, _$WrongDetailModelImpl>
    implements _$$WrongDetailModelImplCopyWith<$Res> {
  __$$WrongDetailModelImplCopyWithImpl(_$WrongDetailModelImpl _value,
      $Res Function(_$WrongDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WrongDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syllable = null,
    Object? modification_of_pronunciation = null,
    Object? how_to_improve = null,
  }) {
    return _then(_$WrongDetailModelImpl(
      syllable: null == syllable
          ? _value.syllable
          : syllable // ignore: cast_nullable_to_non_nullable
              as String,
      modification_of_pronunciation: null == modification_of_pronunciation
          ? _value.modification_of_pronunciation
          : modification_of_pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      how_to_improve: null == how_to_improve
          ? _value.how_to_improve
          : how_to_improve // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WrongDetailModelImpl implements _WrongDetailModel {
  _$WrongDetailModelImpl(
      {required this.syllable,
      required this.modification_of_pronunciation,
      required this.how_to_improve});

  factory _$WrongDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WrongDetailModelImplFromJson(json);

  @override
  final String syllable;
  @override
  final String modification_of_pronunciation;
  @override
  final String how_to_improve;

  @override
  String toString() {
    return 'WrongDetailModel(syllable: $syllable, modification_of_pronunciation: $modification_of_pronunciation, how_to_improve: $how_to_improve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongDetailModelImpl &&
            (identical(other.syllable, syllable) ||
                other.syllable == syllable) &&
            (identical(other.modification_of_pronunciation,
                    modification_of_pronunciation) ||
                other.modification_of_pronunciation ==
                    modification_of_pronunciation) &&
            (identical(other.how_to_improve, how_to_improve) ||
                other.how_to_improve == how_to_improve));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, syllable, modification_of_pronunciation, how_to_improve);

  /// Create a copy of WrongDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WrongDetailModelImplCopyWith<_$WrongDetailModelImpl> get copyWith =>
      __$$WrongDetailModelImplCopyWithImpl<_$WrongDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WrongDetailModelImplToJson(
      this,
    );
  }
}

abstract class _WrongDetailModel implements WrongDetailModel {
  factory _WrongDetailModel(
      {required final String syllable,
      required final String modification_of_pronunciation,
      required final String how_to_improve}) = _$WrongDetailModelImpl;

  factory _WrongDetailModel.fromJson(Map<String, dynamic> json) =
      _$WrongDetailModelImpl.fromJson;

  @override
  String get syllable;
  @override
  String get modification_of_pronunciation;
  @override
  String get how_to_improve;

  /// Create a copy of WrongDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WrongDetailModelImplCopyWith<_$WrongDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeUiModel _$HomeUiModelFromJson(Map<String, dynamic> json) {
  return _HomeUiModel.fromJson(json);
}

/// @nodoc
mixin _$HomeUiModel {
  List<AppModel> get apps => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUiModelCopyWith<HomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiModelCopyWith<$Res> {
  factory $HomeUiModelCopyWith(
          HomeUiModel value, $Res Function(HomeUiModel) then) =
      _$HomeUiModelCopyWithImpl<$Res, HomeUiModel>;
  @useResult
  $Res call({List<AppModel> apps, String? error, bool isLoading});
}

/// @nodoc
class _$HomeUiModelCopyWithImpl<$Res, $Val extends HomeUiModel>
    implements $HomeUiModelCopyWith<$Res> {
  _$HomeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      apps: null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<AppModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUiModelImplCopyWith<$Res>
    implements $HomeUiModelCopyWith<$Res> {
  factory _$$HomeUiModelImplCopyWith(
          _$HomeUiModelImpl value, $Res Function(_$HomeUiModelImpl) then) =
      __$$HomeUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppModel> apps, String? error, bool isLoading});
}

/// @nodoc
class __$$HomeUiModelImplCopyWithImpl<$Res>
    extends _$HomeUiModelCopyWithImpl<$Res, _$HomeUiModelImpl>
    implements _$$HomeUiModelImplCopyWith<$Res> {
  __$$HomeUiModelImplCopyWithImpl(
      _$HomeUiModelImpl _value, $Res Function(_$HomeUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$HomeUiModelImpl(
      apps: null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<AppModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUiModelImpl implements _HomeUiModel {
  const _$HomeUiModelImpl(
      {final List<AppModel> apps = const <AppModel>[],
      this.error = null,
      this.isLoading = false})
      : _apps = apps;

  factory _$HomeUiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeUiModelImplFromJson(json);

  final List<AppModel> _apps;
  @override
  @JsonKey()
  List<AppModel> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeUiModel(apps: $apps, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUiModelImpl &&
            const DeepCollectionEquality().equals(other._apps, _apps) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_apps), error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUiModelImplCopyWith<_$HomeUiModelImpl> get copyWith =>
      __$$HomeUiModelImplCopyWithImpl<_$HomeUiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUiModelImplToJson(
      this,
    );
  }
}

abstract class _HomeUiModel implements HomeUiModel {
  const factory _HomeUiModel(
      {final List<AppModel> apps,
      final String? error,
      final bool isLoading}) = _$HomeUiModelImpl;

  factory _HomeUiModel.fromJson(Map<String, dynamic> json) =
      _$HomeUiModelImpl.fromJson;

  @override
  List<AppModel> get apps;
  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeUiModelImplCopyWith<_$HomeUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

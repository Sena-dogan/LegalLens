// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppResponse _$AppResponseFromJson(Map<String, dynamic> json) {
  return _AppResponse.fromJson(json);
}

/// @nodoc
mixin _$AppResponse {
  List<AppModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppResponseCopyWith<AppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseCopyWith<$Res> {
  factory $AppResponseCopyWith(
          AppResponse value, $Res Function(AppResponse) then) =
      _$AppResponseCopyWithImpl<$Res, AppResponse>;
  @useResult
  $Res call({List<AppModel>? data});
}

/// @nodoc
class _$AppResponseCopyWithImpl<$Res, $Val extends AppResponse>
    implements $AppResponseCopyWith<$Res> {
  _$AppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AppModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppResponseImplCopyWith<$Res>
    implements $AppResponseCopyWith<$Res> {
  factory _$$AppResponseImplCopyWith(
          _$AppResponseImpl value, $Res Function(_$AppResponseImpl) then) =
      __$$AppResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppModel>? data});
}

/// @nodoc
class __$$AppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AppResponseImpl>
    implements _$$AppResponseImplCopyWith<$Res> {
  __$$AppResponseImplCopyWithImpl(
      _$AppResponseImpl _value, $Res Function(_$AppResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AppResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AppModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppResponseImpl implements _AppResponse {
  const _$AppResponseImpl({required final List<AppModel>? data}) : _data = data;

  factory _$AppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppResponseImplFromJson(json);

  final List<AppModel>? _data;
  @override
  List<AppModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      __$$AppResponseImplCopyWithImpl<_$AppResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppResponseImplToJson(
      this,
    );
  }
}

abstract class _AppResponse implements AppResponse {
  const factory _AppResponse({required final List<AppModel>? data}) =
      _$AppResponseImpl;

  factory _AppResponse.fromJson(Map<String, dynamic> json) =
      _$AppResponseImpl.fromJson;

  @override
  List<AppModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get privacyPolicyUrl => throw _privateConstructorUsedError;
  String? get termsAndConditionsUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;
  List<Policy>? get policies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? url,
      String? icon,
      String? description,
      String? key,
      String? privacyPolicyUrl,
      String? termsAndConditionsUrl,
      String? status,
      DateTime? createdAt,
      dynamic updatedAt,
      List<Policy>? policies});
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? privacyPolicyUrl = freezed,
    Object? termsAndConditionsUrl = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? policies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      privacyPolicyUrl: freezed == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsUrl: freezed == termsAndConditionsUrl
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      policies: freezed == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<Policy>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
          _$AppModelImpl value, $Res Function(_$AppModelImpl) then) =
      __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? url,
      String? icon,
      String? description,
      String? key,
      String? privacyPolicyUrl,
      String? termsAndConditionsUrl,
      String? status,
      DateTime? createdAt,
      dynamic updatedAt,
      List<Policy>? policies});
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
      _$AppModelImpl _value, $Res Function(_$AppModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? privacyPolicyUrl = freezed,
    Object? termsAndConditionsUrl = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? policies = freezed,
  }) {
    return _then(_$AppModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      privacyPolicyUrl: freezed == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsUrl: freezed == termsAndConditionsUrl
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      policies: freezed == policies
          ? _value._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<Policy>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppModelImpl implements _AppModel {
  const _$AppModelImpl(
      {this.id,
      this.name,
      this.slug,
      this.url,
      this.icon,
      this.description,
      this.key,
      this.privacyPolicyUrl,
      this.termsAndConditionsUrl,
      this.status,
      this.createdAt,
      this.updatedAt,
      final List<Policy>? policies})
      : _policies = policies;

  factory _$AppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? url;
  @override
  final String? icon;
  @override
  final String? description;
  @override
  final String? key;
  @override
  final String? privacyPolicyUrl;
  @override
  final String? termsAndConditionsUrl;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final dynamic updatedAt;
  final List<Policy>? _policies;
  @override
  List<Policy>? get policies {
    final value = _policies;
    if (value == null) return null;
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppModel(id: $id, name: $name, slug: $slug, url: $url, icon: $icon, description: $description, key: $key, privacyPolicyUrl: $privacyPolicyUrl, termsAndConditionsUrl: $termsAndConditionsUrl, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, policies: $policies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.privacyPolicyUrl, privacyPolicyUrl) ||
                other.privacyPolicyUrl == privacyPolicyUrl) &&
            (identical(other.termsAndConditionsUrl, termsAndConditionsUrl) ||
                other.termsAndConditionsUrl == termsAndConditionsUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other._policies, _policies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      url,
      icon,
      description,
      key,
      privacyPolicyUrl,
      termsAndConditionsUrl,
      status,
      createdAt,
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(_policies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppModelImplToJson(
      this,
    );
  }
}

abstract class _AppModel implements AppModel {
  const factory _AppModel(
      {final int? id,
      final String? name,
      final String? slug,
      final String? url,
      final String? icon,
      final String? description,
      final String? key,
      final String? privacyPolicyUrl,
      final String? termsAndConditionsUrl,
      final String? status,
      final DateTime? createdAt,
      final dynamic updatedAt,
      final List<Policy>? policies}) = _$AppModelImpl;

  factory _AppModel.fromJson(Map<String, dynamic> json) =
      _$AppModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get url;
  @override
  String? get icon;
  @override
  String? get description;
  @override
  String? get key;
  @override
  String? get privacyPolicyUrl;
  @override
  String? get termsAndConditionsUrl;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  dynamic get updatedAt;
  @override
  List<Policy>? get policies;
  @override
  @JsonKey(ignore: true)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return _Policy.fromJson(json);
}

/// @nodoc
mixin _$Policy {
  int? get id => throw _privateConstructorUsedError;
  int? get appId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res, Policy>;
  @useResult
  $Res call(
      {int? id,
      int? appId,
      String? name,
      String? content,
      DateTime? createdAt,
      dynamic updatedAt});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res, $Val extends Policy>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appId = freezed,
    Object? name = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyImplCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$PolicyImplCopyWith(
          _$PolicyImpl value, $Res Function(_$PolicyImpl) then) =
      __$$PolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? appId,
      String? name,
      String? content,
      DateTime? createdAt,
      dynamic updatedAt});
}

/// @nodoc
class __$$PolicyImplCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$PolicyImpl>
    implements _$$PolicyImplCopyWith<$Res> {
  __$$PolicyImplCopyWithImpl(
      _$PolicyImpl _value, $Res Function(_$PolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appId = freezed,
    Object? name = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PolicyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyImpl implements _Policy {
  const _$PolicyImpl(
      {this.id,
      this.appId,
      this.name,
      this.content,
      this.createdAt,
      this.updatedAt});

  factory _$PolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyImplFromJson(json);

  @override
  final int? id;
  @override
  final int? appId;
  @override
  final String? name;
  @override
  final String? content;
  @override
  final DateTime? createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Policy(id: $id, appId: $appId, name: $name, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, appId, name, content,
      createdAt, const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      __$$PolicyImplCopyWithImpl<_$PolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyImplToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  const factory _Policy(
      {final int? id,
      final int? appId,
      final String? name,
      final String? content,
      final DateTime? createdAt,
      final dynamic updatedAt}) = _$PolicyImpl;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$PolicyImpl.fromJson;

  @override
  int? get id;
  @override
  int? get appId;
  @override
  String? get name;
  @override
  String? get content;
  @override
  DateTime? get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppResponseImpl _$$AppResponseImplFromJson(Map<String, dynamic> json) =>
    _$AppResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AppModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppResponseImplToJson(_$AppResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AppModelImpl _$$AppModelImplFromJson(Map<String, dynamic> json) =>
    _$AppModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      key: json['key'] as String?,
      privacyPolicyUrl: json['privacyPolicyUrl'] as String?,
      termsAndConditionsUrl: json['termsAndConditionsUrl'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'],
      policies: (json['policies'] as List<dynamic>?)
          ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppModelImplToJson(_$AppModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'url': instance.url,
      'icon': instance.icon,
      'description': instance.description,
      'key': instance.key,
      'privacyPolicyUrl': instance.privacyPolicyUrl,
      'termsAndConditionsUrl': instance.termsAndConditionsUrl,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt,
      'policies': instance.policies,
    };

_$PolicyImpl _$$PolicyImplFromJson(Map<String, dynamic> json) => _$PolicyImpl(
      id: (json['id'] as num?)?.toInt(),
      appId: (json['appId'] as num?)?.toInt(),
      name: json['name'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$PolicyImplToJson(_$PolicyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appId': instance.appId,
      'name': instance.name,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt,
    };

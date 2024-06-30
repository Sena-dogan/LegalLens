// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeUiModelImpl _$$HomeUiModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeUiModelImpl(
      apps: (json['apps'] as List<dynamic>?)
              ?.map((e) => AppModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppModel>[],
      error: json['error'] as String? ?? null,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeUiModelImplToJson(_$HomeUiModelImpl instance) =>
    <String, dynamic>{
      'apps': instance.apps,
      'error': instance.error,
      'isLoading': instance.isLoading,
    };

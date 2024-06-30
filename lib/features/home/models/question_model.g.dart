// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionResponseImpl _$$QuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseImpl(
      status: json['status'] as String?,
      answer: json['answer'] == null
          ? null
          : Answer.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionResponseImplToJson(
        _$QuestionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'answer': instance.answer,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      original: json['original'] == null
          ? null
          : Original.fromJson(json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
    };

_$OriginalImpl _$$OriginalImplFromJson(Map<String, dynamic> json) =>
    _$OriginalImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$OriginalImplToJson(_$OriginalImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

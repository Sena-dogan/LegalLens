import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionResponse with _$QuestionResponse {
    const factory QuestionResponse({
        String? status,
        Answer? answer,
    }) = _QuestionResponse;

    factory QuestionResponse.fromJson(Map<String, dynamic> json) => _$QuestionResponseFromJson(json);
}

@freezed
class Answer with _$Answer {
    const factory Answer({
        Original? original,
    }) = _Answer;

    factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class Original with _$Original {
    const factory Original({
        String? status,
        String? message,
    }) = _Original;

    factory Original.fromJson(Map<String, dynamic> json) => _$OriginalFromJson(json);
}

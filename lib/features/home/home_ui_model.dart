import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/app_model.dart';
import 'models/question_model.dart';

part 'home_ui_model.freezed.dart';
part 'home_ui_model.g.dart';

@freezed
class HomeUiModel with _$HomeUiModel {
  const factory HomeUiModel({
    @Default(<AppModel>[]) List<AppModel> apps,
    @Default(null) String? error,
    @Default(false) bool isLoading,
    @Default(null) String? slug,
    @Default(<String>[]) List<String> questions,
    @Default(<QuestionResponse>[]) List<QuestionResponse> answers,
  }) = _HomeUiModel;

  factory HomeUiModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUiModelFromJson(json);
}

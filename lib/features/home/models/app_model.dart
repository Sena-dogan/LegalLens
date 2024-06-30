import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';
part 'app_model.g.dart';

@freezed
class AppResponse with _$AppResponse {
  const factory AppResponse({
    required List<AppModel>? data,
  }) = _AppResponse;

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);
}

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
    int? id,
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
    List<Policy>? policies,
  }) = _AppModel;

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}

@freezed
class Policy with _$Policy {
  const factory Policy({
    int? id,
        int? appId,
        String? name,
        String? content,
        DateTime? createdAt,
        dynamic updatedAt,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);
}

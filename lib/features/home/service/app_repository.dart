import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/components/service_locator.dart';
import '../models/app_model.dart';
import '../models/question_model.dart';
import 'app_api.dart';

part 'app_repository.g.dart';

class AppRepository {
  AppRepository(this._appApi);
  final AppApi _appApi;

  Future<AppResponse> getApps() async {
    return _appApi.getApps();
  }

  Future<QuestionResponse> postPolicy(String appSlug, String question) async {
    return _appApi.postPolicy(appSlug, question);
  }
}

@riverpod
AppRepository getAppRepository(GetAppRepositoryRef ref) {
  final AppApi appApi = getIt<AppApi>();
  return AppRepository(appApi);
}

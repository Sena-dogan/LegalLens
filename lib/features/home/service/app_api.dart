import 'package:injectable/injectable.dart';

import '../models/app_model.dart';
import '../models/question_model.dart';
import 'app_rest_client.dart';

@injectable
class AppApi {

  AppApi(this._appRestClient);
  final AppRestClient _appRestClient;

  Future<AppResponse> getApps() async {
    return _appRestClient.getApps();
  }

  Future<QuestionResponse> postPolicy(String appSlug, String question) async {
    return _appRestClient.postPolicy(appSlug, question);
  }
}

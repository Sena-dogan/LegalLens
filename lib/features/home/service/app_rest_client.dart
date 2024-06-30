import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../constants/endpoints.dart';
import '../models/app_model.dart';
import '../models/question_model.dart';

part 'app_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class AppRestClient {
  factory AppRestClient(Dio dio, {String baseUrl}) = _AppRestClient;

  @GET('/apps')
  Future<AppResponse> getApps();

  @GET('/apps/{appSlug}/policies/question={question}')
  Future<QuestionResponse> postPolicy(
    @Path('appSlug') String appSlug,
    @Path('question') String question,
  );
}

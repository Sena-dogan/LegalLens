import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../home_ui_model.dart';
import '../models/app_model.dart';
import '../models/question_model.dart';
import '../service/app_repository.dart';

part 'home_controller.g.dart';

@riverpod
Future<AppResponse> fetchApps(FetchAppsRef ref) async {
  final AppRepository appRepository = ref.read(getAppRepositoryProvider);
  final AppResponse apps =
      await appRepository.getApps().catchError((Object error) {
    debugPrint('Error: $error');
  });
  ref.read(homeControllerProvider.notifier).setApps(apps.data ?? <AppModel>[]);
  return apps;
}

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeUiModel build() {
    return const HomeUiModel(isLoading: true);
  }

  Future<void> askQuestion(String question) async {
    final String slug = state.slug ?? '';
    final List<String> questions = List<String>.from(state.questions);
    questions.add(question);
    state = state.copyWith(questions: questions);
    final AppRepository appRepository = ref.read(getAppRepositoryProvider);
    await appRepository
        .postPolicy(slug, question)
        .then((QuestionResponse response) {
      final List<QuestionResponse> answers =
          List<QuestionResponse>.from(state.answers);
      answers.add(response);
      state = state.copyWith(answers: answers, questions: questions);
    }).catchError((Object error) {
      debugPrint('Error: $error');
    });
  }

  void setApps(List<AppModel> apps) {
    state = state.copyWith(apps: apps, isLoading: false, error: null);
  }

  void setFilteredApps(List<AppModel> apps) {
    state = state.copyWith(filteredApps: apps);
  }

  void setError(String error) {
    state = state.copyWith(error: error);
  }

  void setSlug(String slug) {
    state = state.copyWith(slug: slug);
  }

  Future<void> fetchApps() async {
    final AppRepository appRepository = ref.read(getAppRepositoryProvider);
    try {
      final AppResponse apps = await appRepository.getApps();
      debugPrint('Apps: $apps');
      setApps(apps.data ?? <AppModel>[]);
      setFilteredApps(apps.data ?? <AppModel>[]);
    } catch (e) {
      setError(e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void searchApps(String query) {
    if (state.apps.isEmpty) {
      return;
    }
    if (query.isEmpty) {
      state = state.copyWith(apps: state.filteredApps);
      return;
    }
    final List<AppModel> apps = state.apps;
    final List<AppModel> filteredApps = apps
        .where((AppModel app) =>
            app.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    state = state.copyWith(apps: filteredApps);
  }
}

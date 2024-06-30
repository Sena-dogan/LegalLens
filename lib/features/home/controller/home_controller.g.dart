// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAppsHash() => r'10992a1279a57ce2ae47075006d4fd00d7d28be6';

/// See also [fetchApps].
@ProviderFor(fetchApps)
final fetchAppsProvider = AutoDisposeFutureProvider<AppResponse>.internal(
  fetchApps,
  name: r'fetchAppsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchAppsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAppsRef = AutoDisposeFutureProviderRef<AppResponse>;
String _$homeControllerHash() => r'bf44c7482864791180f4a332a120d5abc41cb5a2';

/// See also [HomeController].
@ProviderFor(HomeController)
final homeControllerProvider =
    AutoDisposeNotifierProvider<HomeController, HomeUiModel>.internal(
  HomeController.new,
  name: r'homeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeController = AutoDisposeNotifier<HomeUiModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

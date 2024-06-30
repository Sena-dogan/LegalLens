// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAppsHash() => r'f2e965a2756fa3885c4f16d8ef9723e3a0a0e9db';

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
String _$homeControllerHash() => r'd837fb50cc9f5e2614fc1f6e34ac9ba77b56b312';

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

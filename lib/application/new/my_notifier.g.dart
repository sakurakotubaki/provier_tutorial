// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'eb10941a5d4d636d8a6567104c2f221a0dc54172';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = Provider<Repository>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryRef = ProviderRef<Repository>;
String _$durationHash() => r'4f8adcdadceba0be59f3a745336e390b4e17fb73';

/// See also [duration].
@ProviderFor(duration)
final durationProvider = AutoDisposeProvider<Duration>.internal(
  duration,
  name: r'durationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$durationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DurationRef = AutoDisposeProviderRef<Duration>;
String _$myNotifierHash() => r'0a260a5e96711d4369916438bcdf38f419fbb9e5';

/// See also [MyNotifier].
@ProviderFor(MyNotifier)
final myNotifierProvider =
    AutoDisposeNotifierProvider<MyNotifier, int>.internal(
  MyNotifier.new,
  name: r'myNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MyNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

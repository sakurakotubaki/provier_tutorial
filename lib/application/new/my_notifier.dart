import 'dart:async';

import 'package:provider_tutorial/application/repository/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'my_notifier.g.dart';

@Riverpod(keepAlive: true)
Repository repository(RepositoryRef ref) {
  return Repository();
}

@riverpod
Duration duration(DurationRef ref) {
  return const Duration(seconds: 1);
}

@riverpod
class MyNotifier extends _$MyNotifier {
  @override
  int build() {
    // Just read/write the code here, in one place
    final period = ref.watch(durationProvider);
    final timer = Timer.periodic(period, (t) => update());
    ref.onDispose(timer.cancel);

    return 0;
  }

  Future<void> update() async {
    await ref.read(repositoryProvider).update(state + 1);
    // `mounted` is no more!
    state++; // This might throw.
  }

  Future<void> reset() async {
    await ref.read(repositoryProvider).update(0);
    state = 0;
  }
}

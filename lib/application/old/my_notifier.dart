import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_tutorial/application/repository/repository.dart';

final repositoryProvider = Provider<Repository>((ref) {
  return Repository();
});

final durationProvider = Provider<Duration>((ref) {
  return const Duration(seconds: 1);
});

class MyNotifier extends StateNotifier<int> {
  MyNotifier(this.ref, this.period) : super(0) {
    // 1 init logic
    _timer = Timer.periodic(period, (t) => update()); // 2 side effect on init
  }
  final Duration period;
  final Ref ref;
  late final Timer _timer;

  Future<void> update() async {
    await ref.read(repositoryProvider).update(state + 1); // 3 mutation
    if (mounted) state++; // 4 check for mounted props
  }

  Future<void> reset() async {
    await ref.read(repositoryProvider).update(0); // 3 mutation
    if (mounted) state = 0; // 4 check for mounted props
  }

  @override
  void dispose() {
    _timer.cancel(); // 5 custom dispose logic
    super.dispose();
  }
}

final myNotifierProvider = StateNotifierProvider<MyNotifier, int>((ref) {
  // 6 provider definition
  final period = ref.watch(durationProvider); // 7 reactive dependency logic
  return MyNotifier(ref, period); // 8 pipe down `ref`
});

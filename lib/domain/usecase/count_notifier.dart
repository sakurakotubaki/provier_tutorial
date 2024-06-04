import 'package:provider_tutorial/domain/entity/count.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'count_notifier.g.dart';

@riverpod
class CountNotifier extends _$CountNotifier {
  @override
  List<Count> build() {
    return [const Count(count: 0)];
  }

  void increment() {
    state = [state.first.copyWith(count: state.first.count + 1)];
  }

  void decrement() {
    state = [state.first.copyWith(count: state.first.count - 1)];
  }
}

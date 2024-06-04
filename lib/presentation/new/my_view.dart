import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_tutorial/application/new/my_notifier.dart';
import 'package:provider_tutorial/presentation/theme/theme_color.dart';

class MyView extends ConsumerWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myNotifier = ref.watch(myNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.green,
        title: const Text('Bugs Encountered'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(myNotifierProvider.notifier).update(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$myNotifier',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await ref.read(myNotifierProvider.notifier).reset();
                },
                child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

final counterProvider = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example'),
      ),
      body: Center(
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final count = ref.watch(counterProvider.state).state;
            return Text(
              '$count',
              style: const TextStyle(
                fontSize: 32,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => ref.read(counterProvider.state).state--,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () => ref.read(counterProvider.state).state++,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

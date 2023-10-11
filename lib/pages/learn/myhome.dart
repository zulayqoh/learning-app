import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_app/pages/learn/second.dart';

import '../../main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // use ref.watch to get/read/access the preserved state
    int homepageCount = ref.watch(appCount);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Flutter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                // preserved state can be read - ${ref.read(appCount)} or accessed
                // the notifier notifies the ui of the changes on the state
                '$homepageCount',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                // use ref.read to make modification on preserved state
                ref.read(appCount.notifier).state++;
              },
              heroTag: 'increment button',
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const SecondPage()));
              },
              heroTag: 'next button',
              tooltip: 'Next',
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appCount = StateProvider((ref) => 5);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

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

class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int secondpageCount = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Shows Preserved state from the previous page"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "preserved data is ",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  '$secondpageCount',
                  style: Theme.of(context).textTheme.displayMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

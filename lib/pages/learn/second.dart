import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

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
import 'package:flutter/material.dart';

import '../../common/widgets/app_button.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/reading.png'),
                const SizedBox(height: 10),
                const Text('One'),
                const SizedBox(height: 30),
                const Text('Three'),
                const SizedBox(height: 50),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(text: 'Next', onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

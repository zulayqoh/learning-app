import 'package:flutter/material.dart';

import '../../common/widgets/app_button.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key, required this.title, required this.caption, required this.imagePath}) : super(key: key);
  final String title, caption, imagePath;

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
                Image.asset(imagePath),
                const SizedBox(height: 10),
                Text(title),
                const SizedBox(height: 30),
                Text(caption),
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

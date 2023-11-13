import 'package:flutter/material.dart';
import 'package:learning_app/pages/onboarding/onboarding_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  PageView(
          children: const [
            Onboard(),
            Onboard(),
            Onboard(),
          ],
        ),
      ),
    );
  }
}

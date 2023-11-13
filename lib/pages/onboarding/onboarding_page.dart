import 'package:flutter/material.dart';
import 'package:learning_app/core/constants/imagePath.dart';
import 'package:learning_app/pages/onboarding/onboarding_widget.dart';

import '../../core/constants/string_util.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  PageView(
          children: const [
            Onboard(title: StringUtil.alwaysFascinatedLearning, caption: StringUtil.enjoyAFastAndSmoothFoodDelivery, imagePath: ImagePath.reading,),
            Onboard(title: StringUtil.foodNinjaIsWhereYourComfortFoodLives, caption: StringUtil.anywhereAnytime, imagePath: ImagePath.man,),
            Onboard(title: StringUtil.findYourComfortFoodHere , caption: StringUtil.hereYouCanFindAChef, imagePath: ImagePath.boy,),

          ],
        ),
      ),
    );
  }
}

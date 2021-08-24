import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/auth_module/views/auth_page.dart';
import 'package:shoppyshop/modules/on_boarding_module/widgets/onboarding_pages.dart';

class OnBoardingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverBoard(
      pages: onBoardingPages(),
      showBullets: true,
      nextText: 'SUIVANT',
      skipText: 'PASSER',
      finishText: 'FIN',
      skipCallback: () {
        Get.off(
          AuthPage(),
          transition: Transition.fadeIn,
          duration: Duration(
            seconds: 2,
          ),
        );
      },
      finishCallback: () {
        Get.off(
          AuthPage(),
          transition: Transition.fadeIn,
          duration: Duration(
            seconds: 2,
          ),
        );
      },
    );
  }
}

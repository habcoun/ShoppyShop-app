import 'dart:async';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/on_boarding_module/views/onboarding_slides.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  loading() {
    Timer(
      Duration(seconds: 3),
      () => Get.off(
        OnBoardingSlides(),
        transition: Transition.fadeIn,
        duration: Duration(
          milliseconds: 1500,
        ),
      ),
    );
  }
}

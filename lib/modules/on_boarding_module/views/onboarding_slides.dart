import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/on_boarding_module/controllers/onboarding_controller.dart';
import 'package:shoppyshop/modules/on_boarding_module/widgets/onboarding_body.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';

class OnBoardingSlides extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.KPrimary,
      body: GetBuilder<OnBoardingController>(
        init: OnBoardingController(),
        initState: (_) {},
        builder: (_) {
          return SafeArea(
            child: OnBoardingBody(),
          );
        },
      ),
    );
  }
}

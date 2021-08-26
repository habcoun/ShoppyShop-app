import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/splash_module/splash_controller.dart';
import 'package:shoppyshop/modules/splash_module/splash_body.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';

class SplashPage extends GetResponsiveView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.KPrimary,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        initState: (_) {},
        builder: (_) {
          return SafeArea(
            child: SingleChildScrollView(
              child: SplashBody(),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';

class SplashBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageApp.KMotif,
              ),
              fit: BoxFit.fill),
        ),
        child: Image(
          fit: BoxFit.none,
          image: AssetImage(
            ImageApp.KLogoWhite,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<PageModel> onBoardingPages() {
  final onBoardingPages = [
    PageModel.withChild(
      child: Container(
        height: Get.height.sh,
        width: Get.width.sw,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageApp.KMotif,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/images/47336-online-shopping-search-product-concept-animation.json',
                    width: Get.width / 1.5.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Divers produits et vendeur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontFamily: 'PoppinsSemiBold',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      ' Découvrez dès maintenant notre sélection de produits tendance à vendre en 2021',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      color: ColorsApp.KPrimary,
      doAnimateChild: true,
    ),
    PageModel.withChild(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageApp.KMotif,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/images/47342-online-shopping-banner-concept-animation.json',
                    width: Get.width / 1.5.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'SoppyShop vous facilite la vie !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontFamily: 'PoppinsSemiBold',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'ShoppyShop vous permet en un seul clic de commander tous ce que vous voulez',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      color: ColorsApp.KPrimary,
      doAnimateChild: true,
    ),
    PageModel.withChild(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageApp.KMotif,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/images/47337-online-shopping-pay-online-secure-payment.json',
                    width: Get.width / 1.5.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Paiement Sécurisé, Simple et Rapide',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontFamily: 'PoppinsSemiBold',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Afin de pouvoir régler vos achats en toute tranquillité, ShoppyShop vous laisse le choix de votre mode de paiement',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      color: ColorsApp.KPrimary,
      doAnimateChild: true,
    ),

    // PageModel(
    //     color: kPrimary,
    //     imageAssetPath: kLogoWhite,
    //     title: 'Screen 3',
    //     body: 'Connect with the people from different places',
    //     doAnimateImage: true),
  ];
  return onBoardingPages;
}

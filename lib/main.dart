import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/splash_module/splash_page.dart';

//import 'package:sizer/sizer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashPage(),
    );
  }
}

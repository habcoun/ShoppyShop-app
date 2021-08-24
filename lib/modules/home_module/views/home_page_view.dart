import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/home_module/controllers/home_page_controller.dart';
import 'package:shoppyshop/modules/home_module/widgets/home_body.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';

class HomePage extends GetView<HomePageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: ColorsApp.KPrimary,
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: ColorsApp.KPrimary,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'ShoppyShop',
          style: TextStyle(
            color: ColorsApp.KPrimary,
            fontSize: 18,
            fontFamily: 'PoppinsMedium',
          ),
        ),
      ),
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}

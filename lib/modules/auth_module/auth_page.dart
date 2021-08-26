import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/auth_module/auth_controller.dart';
import 'package:shoppyshop/modules/auth_module/auth_body.dart';

class AuthPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AuthBody(),
      ),
    );
  }
}

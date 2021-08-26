import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/auth_module/auth_controller.dart';
import 'package:shoppyshop/modules/auth_module/register_body.dart';

class RegisterPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RegisterBody(),
      ),
    );
  }
}

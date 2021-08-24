import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/auth_module/controllers/auth_controller.dart';
import 'package:shoppyshop/modules/auth_module/widgets/auth_body.dart';

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

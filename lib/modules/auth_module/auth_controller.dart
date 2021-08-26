import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Votre email non valide';
    } else {
      return 'null';
    }
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Le mot de passe doit contenir au moins 6 caractères';
    } else {
      return null;
    }
  }

  void checkLogin() {
    final isValide = loginFormKey.currentState!.validate();
    if (!isValide) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}

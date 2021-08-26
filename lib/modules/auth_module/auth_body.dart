import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyshop/modules/auth_module/auth_controller.dart';
import 'package:shoppyshop/modules/auth_module/register_page.dart';
import 'package:shoppyshop/modules/dashboard_module/dashboard_page.dart';
import 'package:shoppyshop/shared/components/components.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';

class AuthBody extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AuthController());
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GetBuilder<AuthController>(
          init: AuthController(),
          initState: (_) {},
          builder: (_) {
            return Form(
              key: controller.loginFormKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        height: 100,
                        image: AssetImage(ImageApp.KLogoDark),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CostumTextFormFeild(
                        controller: controller.emailController,
                        prefix: Icons.email_outlined,
                        label: 'Votre Email',
                        validate: (value) {
                          return controller.validateEmail(value!);
                        },
                        onSubmit: (value) {
                          controller.email = value;
                        },
                        type: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CostumTextFormFeild(
                        label: 'Mot de passe',
                        controller: controller.passwordController,
                        type: TextInputType.text,
                        prefix: Icons.lock_outline,
                        onSubmit: (value) {
                          controller.password = value;
                        },
                        isPassword: true,
                        validate: (value) {
                          return controller.validatePassword(value);
                        },
                        suffix: Icons.visibility_outlined,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                            fontFamily: 'PoppinsMedium',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Defaultbotton(
                        background: ColorsApp.KPrimary,
                        radius: 16.0,
                        text: "Connection",
                        onPress: () {
                          controller.checkLogin();
                          Get.to(
                            DashboardPage(),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyDividerText(
                        text: 'Ou',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            linkIcon: ImageApp.KGoogle,
                          ),
                          SocialIcon(
                            linkIcon: ImageApp.KFaceboook,
                          ),
                          SocialIcon(
                            linkIcon: ImageApp.KAppel,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous n’avez pas un account ?",
                            style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(
                                RegisterPage(),
                              );
                            },
                            child: Text(
                              "Inscrire",
                              style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

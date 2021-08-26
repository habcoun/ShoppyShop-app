import 'package:flutter/material.dart';
import 'package:shoppyshop/modules/home_module/home_body.dart';
import 'package:shoppyshop/shared/components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}

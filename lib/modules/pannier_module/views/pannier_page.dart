import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pannier_controller.dart';

class PannierPage extends GetView<PannierController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Pannier'),
        ),
      ),
    );
  }
}

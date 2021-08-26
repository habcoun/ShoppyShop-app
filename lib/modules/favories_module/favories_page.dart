import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favories_controller.dart';

class FavoriesPage extends GetView<FavoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Favories'),
        ),
      ),
    );
  }
}

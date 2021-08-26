import 'package:flutter/material.dart';
import 'package:shoppyshop/shared/components/components.dart';

import 'products_page.dart';

class ProductBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: ProductPage(),
      ),
    );
  }
}

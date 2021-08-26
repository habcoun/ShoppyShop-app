import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shoppyshop/modules/product_module/product_body.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 200,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: ItemCatScroll(),
                      onTap: () {
                        print('Cliked $index');
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 1,
                    );
                  },
                  itemCount: 6),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 40,
              child: Text(
                'Nouveaux Produits',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'PoppinsMedium',
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: ProductsHomeBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Transform.translate(
              offset: Offset(0.0, index.isOdd ? 80 : 0.0),
              child: ItemProductHome());
        },
        staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1.3),
        mainAxisSpacing: 2,
        crossAxisSpacing: 15,
      ),
    );
  }
}

class ItemProductHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              print('Tapped product');
              Get.to(
                ProductBody(),
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://placeimg.com/640/480/any',
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Titre du produit ',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 15, fontFamily: 'PoppinsMedium'),
          ),
        ),
        Visibility(
          visible: true,
          //visible: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              'Prix after solde ',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PoppinsMedium',
                decoration: TextDecoration.lineThrough,
                color: Color(0xFFAAAAAA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCatScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Positioned(
              top: 22,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                  color: ColorsApp.KPrimary,
                ),
                height: 130,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Women',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PoppinsSemiBold',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Image(
                  image: AssetImage(ImageApp.KWomen),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

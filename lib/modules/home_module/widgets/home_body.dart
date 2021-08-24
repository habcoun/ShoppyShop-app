import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //List Scroll View Horisontal Categories
          Flexible(
            flex: 7,
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
                itemCount: 3),
          ),
          //Nouveau Produits
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 25,
              ),
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
          //GridView Product
          Flexible(
            flex: 13,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
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
              offset: Offset(0.0, index.isOdd ? 50 : 0.0),
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
        InkWell(
          onTap: () {
            print('Tapped product');
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
        Text(
          'Titre du produit ',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 15, fontFamily: 'PoppinsMedium'),
        ),
        Visibility(
          visible: true,
          //visible: false,
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
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Stack(
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
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Image(
                      image: AssetImage(ImageApp.KWomen),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

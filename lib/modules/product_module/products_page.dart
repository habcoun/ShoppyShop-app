import 'package:flutter/material.dart';
import 'package:shoppyshop/shared/constant/const_images.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Spacer(),
          TowProductItem(),
          TowProductItem(),
        ],
      ),
    );
  }
}

class TowProductItem extends StatelessWidget {
  const TowProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage(
              ImageApp.KOffreIamge,
            ),
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Titre du produit ',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, fontFamily: 'PoppinsMedium'),
                ),
                Text(
                  '299 DT',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PoppinsMedium',
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 130,
            ),
            Text(
              '+',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

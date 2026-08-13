import 'package:flutter/material.dart';
import 'package:store/screen/product_details.dart';
import 'package:store/custom/card.dart';
import 'package:store/model/model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product, super.key});
  ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductDetailsScreen.id,
          arguments: product,
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomContainer(product: product),
          Positioned(
              top: -50,
              right: 17,
              child: Image.network(
                product.image,
                height: 110,
                width: 110,
              )),
        ],
      ),
    );
  }
}

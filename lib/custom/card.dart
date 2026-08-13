import 'package:flutter/material.dart';
import 'package:store/screen/product_details.dart';
import 'package:store/model/model.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.product,
  });

  final ProductsModel product;

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
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: Colors.white70,
                spreadRadius: 20,
                offset: Offset(10, 10)),
          ],
        ),
        child: Card(
          color: Colors.white70,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  product.title.length > 9
                      ? product.title.substring(0, 9)
                      : product.title,
                  style: const TextStyle(color: Colors.black87, fontSize: 17),
                ),
                Text(
                  product.description.length > 9
                      ? product.description.substring(0, 9)
                      : product.description,
                  style: const TextStyle(color: Colors.black54, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r"$"
                      "${product.price}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

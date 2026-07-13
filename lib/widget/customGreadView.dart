import 'package:flutter/material.dart';
import 'package:store/model/model.dart';
import 'package:store/widget/CustomContainer.dart';

class GriedViewWidget extends StatelessWidget {
  const GriedViewWidget({
    super.key,
    required this.product,
  });

  final List<ProductsModel> product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product.length,
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 70,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          product: product[index],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store/screen/home_view.dart';
import 'package:store/screen/cateogry_name_screen.dart';
import 'package:store/screen/product_details.dart';
import 'package:store/screen/update_product.dart';

void main() {
  runApp(const Store());
}

class Store extends StatelessWidget {
  const Store({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        ProductDetailsScreen.id: (context) => const ProductDetailsScreen(),
        UpdateproductScreen.id: (context) => const UpdateproductScreen(),
        CateogrynameScreen.id: (context) => const CateogrynameScreen(),
      },
      initialRoute: HomeView.id,
    );
  }
}

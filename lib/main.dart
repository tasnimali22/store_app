import 'package:flutter/material.dart';
import 'package:store/Screen/HomeView.dart';
import 'package:store/Screen/cateogryNameScreen.dart';
import 'package:store/Screen/updateProduct.dart';

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
        UpdateproductScreen.id: (context) => UpdateproductScreen(),
        CateogrynameScreen.id: (context) => const CateogrynameScreen(),
      },
      initialRoute: HomeView.id,
    );
  }
}

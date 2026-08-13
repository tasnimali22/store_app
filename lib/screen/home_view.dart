import 'package:flutter/material.dart';
import 'package:store/screen/cateogry_name_screen.dart';
import 'package:store/model/model.dart';
import 'package:store/services/all_produces.dart';
import 'package:store/widget/custom_gread_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = "homeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<List<ProductsModel>> productsFuture;
  @override
  void initState() {
    super.initState();
    productsFuture = AllProducts().getAllProduces();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CateogrynameScreen.id);
            },
            icon: const Icon(Icons.search)),
        centerTitle: true,
        title: const Text("Store", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_sharp, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: FutureBuilder<List<ProductsModel>>(
          future: productsFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductsModel> products = snapshot.data!;
              return GriedViewWidget(product: products);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

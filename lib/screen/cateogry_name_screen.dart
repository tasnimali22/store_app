import 'package:flutter/material.dart';
import 'package:store/model/model.dart';
import 'package:store/services/category_name.dart';
import 'package:store/widget/custom_text_filed.dart';
import 'package:store/widget/custom_gread_view.dart';

class CateogrynameScreen extends StatefulWidget {
  const CateogrynameScreen({super.key});

  static String id = "cateogrynameScreen";

  @override
  State<CateogrynameScreen> createState() => _CateogrynameScreenState();
}

Future<List<ProductsModel>>? catorgyNameFuture;
final TextEditingController controller = TextEditingController();

class _CateogrynameScreenState extends State<CateogrynameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomTextFiled(
            controller: controller,
            onSubmitted: (value) {
              setState(() {
                catorgyNameFuture = CategoryNameServices()
                    .getAllCategoryName(category_name: value);
                controller.clear();
              });
            },
            hintText: ":Enter category_name"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_sharp, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: catorgyNameFuture == null
            ? const Center(
                child: Text("Search for a category"),
              )
            : FutureBuilder(
                future: catorgyNameFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    List<ProductsModel> productsName = snapshot.data!;
                    return GriedViewWidget(
                      product: productsName,
                    );
                  } else {
                    return Center(
                      child: Text("Error ${snapshot.error}"),
                    );
                  }
                }),
      ),
    );
  }
}

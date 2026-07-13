import 'package:flutter/material.dart';
import 'package:store/model/model.dart';
import 'package:store/services/categoryName.dart';
import 'package:store/widget/CustomTextFiled.dart';
import 'package:store/widget/customGreadView.dart';

class CateogrynameScreen extends StatefulWidget {
  const CateogrynameScreen({super.key});

  static String id = "cateogrynameScreen";

  @override
  State<CateogrynameScreen> createState() => _CateogrynameScreenState();
}

Future<List<ProductsModel>>? CatorgyNameFuture;
final TextEditingController controller = TextEditingController();

@override
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
                CatorgyNameFuture = CategoryNameServices()
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
        child: CatorgyNameFuture == null
            ? Center(
                child: Text("Search for a category"),
              )
            : FutureBuilder(
                future: CatorgyNameFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
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

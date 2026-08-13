import 'package:store/helper/api.dart';
import 'package:store/model/model.dart';

class AllProducts {
  Future<List<ProductsModel>> getAllProduces() async {
    try {
      var responsedata = await Api().get(url: "https://dummyjson.com/products");
      List<dynamic> data = responsedata["products"];

      List<ProductsModel> allListProduces = [];
      for (int i = 0; i < data.length; i++) {
        allListProduces.add(ProductsModel.fromJson(data[i]));
      }
      return allListProduces;
    } on Exception catch (e) {
      return [];
      // TODOA
    }
  }
}

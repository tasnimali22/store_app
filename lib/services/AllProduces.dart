import 'package:store/helper/api.dart';
import 'package:store/model/model.dart';

class AllProducts {
  Future<List<ProductsModel>> getAllProduces() async {
    try {
      var responsedata = await Api().get(url: "https://dummyjson.com/products");
      List<dynamic> Data = responsedata["products"];

      List<ProductsModel> AllListProduces = [];
      for (int i = 0; i < Data.length; i++) {
        AllListProduces.add(ProductsModel.fromJson(Data[i]));
      }
      return AllListProduces;
    } on Exception catch (e) {
      print("Error: $e");
      return [];
      // TODO
    }
  }
}

import 'package:store/context/const.dart';
import 'package:store/helper/api.dart';
import 'package:store/model/model.dart';

class CategoryNameServices {
  Future<List<ProductsModel>> getAllCategoryName({
    required String category_name,
  }) async {
    Map<String, dynamic> Data = await Api()
        .get(url: "https://dummyjson.com/products/category/$category_name");

    List<dynamic> producctsData = Data["products"];
    List<ProductsModel> CategoryNameList = [];

    return producctsData.map((e) => ProductsModel.fromJson(e)).toList();

    // for (int i = 0; i < Data.length; i++) {
    //  CategoryNameList.add(ProductsModel.fromJson(Data[i]));
    // }
    //  return CategoryNameList;
  }
}

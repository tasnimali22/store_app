import 'package:store/context/const.dart';
import 'package:store/helper/api.dart';
import 'package:store/model/model.dart';

class UpdateproductServices {
  Future<ProductsModel> updateproduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: "$Url/$id",
      body: {
        "title": "test product",
        "price": "13.5",
        "description": "lorem ipsum set",
        "image": "https://i.pravatar.cc",
        "category": "electronic",
      },
    );
    return ProductsModel.fromJson(data);
  }
}

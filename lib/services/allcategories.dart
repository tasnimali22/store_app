import 'package:store/context/const.dart';
import 'package:store/helper/api.dart';

class Allcategories {
  Future<List<dynamic>> allCategories() async {
    List<dynamic> data = await Api().get(url: "$url/categories");

    return data;
  }
}

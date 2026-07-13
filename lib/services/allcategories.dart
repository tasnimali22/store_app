import 'package:store/context/const.dart';
import 'package:store/helper/api.dart';

class Allcategories {
  Future<List<dynamic>> AllCategories() async {
    List<dynamic> data = await Api().get(url: "$Url/categories");

    return data;
  }
}

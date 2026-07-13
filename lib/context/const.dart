import 'package:store/model/model.dart';
import 'package:store/services/updateProduct.dart';

String Url = "https://dummyjson.com/products";

String? NameProduct, deco, image;

String? price;

Future<void> Update(ProductsModel products) async {
  await UpdateproductServices().updateproduct(
      id: products.id,
      title: NameProduct == null ? products.title : NameProduct!,
      price: price == null ? products.price.toString() : price!,
      description: deco == null ? products.description : deco!,
      image: image == null ? products.image : image!,
      category: products.category);
}

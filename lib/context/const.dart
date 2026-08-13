import 'package:store/model/model.dart';
import 'package:store/services/update_product.dart';

String url = "https://dummyjson.com/products";

String? nameProduct, deco, image;

String? price;

Future<void> update(ProductsModel products) async {
  await UpdateproductServices().updateproduct(
      id: products.id,
      title: nameProduct == null ? products.title : nameProduct!,
      price: price == null ? products.price.toString() : price!,
      description: deco == null ? products.description : deco!,
      image: image == null ? products.image : image!,
      category: products.category);
}

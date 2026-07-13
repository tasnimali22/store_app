class ProductsModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final String category;
  ProductsModel({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
      id: jsonData['id'],
      title: jsonData['title'] ?? "",
      category: jsonData['category'] ?? "",
      price: jsonData['price'],
      description: jsonData['description'] ?? "",
      image: jsonData['images'] != null && jsonData["images"].length > 0
          ? jsonData['images'][0]
          : "",
    );
  }
}

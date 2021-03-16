class FeaturedModel {
  int id;
  final String productName;
  final String size;
  final String colour;
  final String productDescription;
  final String productCategory;
  final String image1;
  final String image2;
  final String image3;
  final String productCode;
  final price;
  final oldPrice;

  FeaturedModel({
    this.id,
    this.productName,
    this.productDescription,
    this.productCategory,
    this.image1,
    this.image2,
    this.image3,
    this.price,
    this.size,
    this.colour,
    this.productCode,
    this.oldPrice,
  });

  factory FeaturedModel.fromJson(Map<String, dynamic> json) {
    return FeaturedModel(
      id: json["id"] as int,
      productName: json["product_name"] as String,
      size: json["size"] as String,
      colour: json["colour"] as String,
      productDescription: json["product_description"] as String,
      productCategory: json["product_category"] as String,
      image1: json["image1"] as String,
      image2: json["image2"] as String,
      image3: json["image3"] as String,
      productCode: json["product_code"] as String,
      price: json["price"],
      oldPrice: json["old_price"],
    );
  }
}

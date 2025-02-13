class ProductModel {
  String? image;
  String? name;
  String? salePrice;
  String? regularPrice;
  String? discountPercentage;

  ProductModel(
      {this.image,
      this.name,
      this.salePrice,
      this.regularPrice,
      this.discountPercentage});

  ProductModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    salePrice = json['sale_price'];
    regularPrice = json['regular_price'];
    discountPercentage = json['discount_percentage'];
  }
}

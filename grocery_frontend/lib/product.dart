class Product {
  final id;
  final name;
  final desc;

  Product({this.id, this.name, this.desc});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['product_id'] as int,
      name: json['product_name'] as String,
      desc: json['description'] as String,
    );
  }
}
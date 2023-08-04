class ProductModal {
  final int id;
  final String title;
  final String description;
  final int price;
  final String brand;
  final String category;
  final String thumbnail;

  ProductModal({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.brand,
    required this.category,
    required this.thumbnail,
  });

  factory ProductModal.fromMap({required Map<String, dynamic> data}) {
    return ProductModal(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      price: data['price'],
      brand: data['brand'],
      category: data['category'],
      thumbnail: data['thumbnail'],
    );
  }
}

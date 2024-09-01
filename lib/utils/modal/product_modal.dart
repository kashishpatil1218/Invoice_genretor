class ProductModal {
  int? id, quantity, price, discount;
  String? name, category, img;

  ProductModal(
      {required this.id,
      required this.name,
      required this.img,
      required this.price,
      required this.category,
      required this.quantity,
      required this.discount});

  factory ProductModal.fromMap(Map m1) {
    return ProductModal(
        id: m1['id'],
        name: m1['name'],
        img: m1['img'],
        price: m1['price'],
        category: m1['category'],
        quantity: m1['quantity'],
        discount: m1['discount']);
  }
}

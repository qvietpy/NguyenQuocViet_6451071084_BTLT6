class Product {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });
}

final List<Product> productList = [
  Product(name: 'Laptop', price: 1500),
  Product(name: 'Phone', price: 800),
  Product(name: 'Headphone', price: 200),
  Product(name: 'Keyboard', price: 100),
];
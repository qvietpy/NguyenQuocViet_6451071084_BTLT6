import 'package:flutter/material.dart';
import '../app/product_data.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        title: Text(product.name),
        subtitle: Text('Price: \$${product.price}'),
        onTap: onTap,
      ),
    );
  }
}
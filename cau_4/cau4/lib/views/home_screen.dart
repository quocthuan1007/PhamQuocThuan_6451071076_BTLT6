import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(id: 1, name: 'Laptop', price: 999.99),
      Product(id: 2, name: 'Phone', price: 599.99),
      Product(id: 3, name: 'Tablet', price: 399.99),
      Product(id: 4, name: 'Headphones', price: 199.99),
      Product(id: 5, name: 'Watch', price: 299.99),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

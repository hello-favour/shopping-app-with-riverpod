import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final Color background;
  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 5),
            Text("\$$price", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 5),
            Center(
              child: Image.asset(
                image,
                height: 170,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

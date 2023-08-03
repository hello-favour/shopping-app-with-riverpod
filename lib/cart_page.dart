import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem["imageUrl"] as String),
              radius: 30,
            ),
            title: Text(
              cartItem["title"] as String,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text("Size: ${cartItem["sizes"]}"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}

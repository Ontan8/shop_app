import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.title});

  final String id;
  final String title;
  final double price;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('\$$price'),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(quantity * price)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}

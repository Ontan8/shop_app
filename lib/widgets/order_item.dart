import 'package:flutter/material.dart';
import '../providers/orders.dart' as ot;
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  OrderItem(this.order);
  final ot.OrderItem order;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text('Total: \$${order.amount}'),
          subtitle: Text(DateFormat('dd MM yyyy hh:mm').format(order.dateTime)),
          trailing: IconButton(
            icon: Icon(Icons.expand_more),
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}

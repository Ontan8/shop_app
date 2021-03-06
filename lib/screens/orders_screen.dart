import 'package:flutter/material.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import '../widgets/order_item.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart' show Orders;

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders-screen';
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: const Text('Your Orders')),
      body: ListView.builder(
        itemBuilder: ((context, index) => OrderItem(ordersData.orders[index])),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}

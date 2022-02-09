import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/user_product_item.dart';

import '../providers/products_provider.dart';

class UserProductsScreen extends StatelessWidget {
  const UserProductsScreen({Key? key}) : super(key: key);
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, EditProductScreen.routeName);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (ctx, index) => Column(
            children: [
              UserProductItem(
                  title: productsData.items[index].title,
                  imageUrl: productsData.items[index].imageUrl),
              Divider(),
            ],
          ),
          itemCount: productsData.items.length,
        ),
      ),
    );
  }
}

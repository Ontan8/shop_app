import 'package:flutter/material.dart';
import 'package:shop_app/providers/products_provider.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, index) => ChangeNotifierProvider(
        create: (c) => products[index],
        child: ProductItem(),
      ),
      itemCount: products.length,
      padding: const EdgeInsets.all(10.0),
    );
  }
}

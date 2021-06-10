import 'package:flutter/material.dart';
import 'package:map2U/src/data/productData.dart';
import 'package:map2U/src/data/productModel.dart';
import 'package:map2U/src/pages/detail/detail.dart';
import './productCard.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
    this.products,
  }) : super(key: key);
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Orientation.portrait != null ? 2 : 4,
      ),
      itemBuilder: (context, index) => ProductCard(),
    );
  }
}

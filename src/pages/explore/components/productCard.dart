import 'package:flutter/material.dart';
import 'package:map2U/src/data/productData.dart';
import 'package:map2U/src/consts.dart';
import 'package:map2U/src/data/productModel.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final ProductModel product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.028,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: AspectRatio(
          aspectRatio: 0.70,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: product.imgLink,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

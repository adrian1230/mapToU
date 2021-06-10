import 'package:flutter/material.dart';
import 'package:map2U/src/data/productModel.dart';
import '../../consts.dart';
import 'package:map2U/src/pages/detail/components/description.dart';
import 'package:map2U/src/pages/detail/components/info.dart';

class Detail extends StatelessWidget {
  static String routeName = "/detail";
  final ProductModel product;
  const Detail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.keyboard_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.local_mall_outlined),
          onPressed: () {},
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

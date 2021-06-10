import 'package:flutter/material.dart';
import 'package:map2U/src/consts.dart';
import 'package:map2U/src/pages/detail/detail.dart';
import 'package:map2U/src/data/productModel.dart';
import 'package:map2U/src/data/productData.dart';

class Explore extends StatefulWidget {
  final ProductModel product;
  final Function press;
  static String routeName = "/explore";
  Explore({Key key, @required this.product, this.press}) : super(key: key);
  @override
  _Explore createState() => _Explore();
}

class _Explore extends State<Explore> {
  List<ProductModel> productDataList;

  get index => null;
  @override
  void initState() {
    productDataList =
        productMapList.map((x) => ProductModel.fromJson(x)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Products",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                children: [
                  listingProduct(context, index),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listingProduct(context, index) {
    return Column(
      children: productDataList.map((x) {
        return BoxTT(
          model: x,
          // press: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => Detail(
          //                 product: productDataList[index],
          //               )));
          // }
        );
      }).toList(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text("Map2U"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.map),
          onPressed: () {},
        ),
      ],
    );
  }
}

class BoxTT extends StatelessWidget {
  const BoxTT({
    Key key,
    // @required this.press,
    @required this.model,
  }) : super(key: key);

  final ProductModel model;
  // final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      // onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 65,
                width: 65,
                child: Image.asset(
                  model.imgLink,
                  height: 60,
                  width: 60,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(model.name),
            subtitle: Text(
              model.subHeader + " / " + model.price.toString() + " USD",
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:map2U/src/widgets/cusCard.dart';
import '../../../consts.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Electronic",
      "Cosmetic",
      "Fashion & Clothing",
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding / 4),
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index) => CusCard(category: categories[index],),
      ),
    );
  }
}

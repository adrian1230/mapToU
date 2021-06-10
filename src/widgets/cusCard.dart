import 'package:flutter/material.dart';
import '../consts.dart';

class CusCard extends StatelessWidget {
  final String category;
  const CusCard({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        category,
        style: TextStyle(color: textColor.withOpacity(0.75), fontSize: 18),
      ),
    );
  }
}

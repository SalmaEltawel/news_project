import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.model, required this.index});

  CategoryModel model;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: model.color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
          bottomRight: index.isOdd ? Radius.zero : Radius.circular(30),
          bottomLeft: index.isEven ? Radius.zero : Radius.circular(30),
        ),
      ),
      child: Column(children: [
        Expanded(child: Image(image: AssetImage(model.Image))),
        Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              model.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            )),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news/screens/category_item.dart';

import '../models/category_model.dart';

class CategoryTab extends StatelessWidget {
  Function onClick;
  CategoryTab({super.key,required this.onClick});


  List<CategoryModel> categories = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Pick your categoryof interest",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4F5A69))),
          Expanded(
            child: GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    onClick(categories[index]);

                  },
                  child: CategoryItem(
                    model: categories[index],
                    index: index,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryModel {
  String name;

  CategoryModel({required this.id,
    required this.name,
    required this.Image,
    required this.color});

  String Image;
  Color color;
  String id;


  static List <CategoryModel> getCategories() {
    return [
      CategoryModel(
          id: "sports",
          name: "Sports",
          Image: "assets/images/sports.png",
          color: Color(0xffC91C22)),
      CategoryModel(
          id: "entertainment",
          name: "Politics",
          Image: "assets/images/Politics.png",
          color: Color(0xff003E90)),
      CategoryModel(
          id: "health",
          name: "Health",
          Image: "assets/images/health.png",
          color: Color(0xffED1E79)),
      CategoryModel(
          id: "business",
          name: "business ",
          Image: "assets/images/bussines.png",
          color: Color(0xffCF7E48)),
      CategoryModel(
          id: "general",
          name: "Enviroment",
          Image: "assets/images/environment.png",
          color: Color(0xff4882CF)),
      CategoryModel(
          id: "science",
          name: "Science",
          Image: "assets/images/science.png",
          color: Color(0xffF2D352)),
      CategoryModel(
          id: "technology",
          name: "technology",
          Image: "assets/images/science.png",
          color: Color(0xffF2D352)),
    ];
  }
}

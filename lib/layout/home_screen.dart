import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/screens/category_tabs.dart';
import 'package:news/screens/data_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selected = true;
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage("assets/images/pattern.png"))),
      child: Scaffold(
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(),
        backgroundColor: Colors.transparent,
        appBar: selected
            ? AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                centerTitle: true,
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.transparent)),
                backgroundColor: Colors.green,
                title: const Text("News App",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                actions: [
                  InkWell(
                      onTap: () {
                        selected = !selected;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ))
                ],
              )
            : AppBar(
          leading: SizedBox(),
          leadingWidth: 1,
          backgroundColor: Colors.green,
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent)),
                title: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color: Colors.green),
                  prefixIcon: InkWell(
                    onTap: () {
                    },
                      child: Icon(Icons.close,color: Colors.green)),
                  hintText: "Search article",
                    hintStyle:TextStyle(color: Colors.green) ,
                    filled: true,
                    fillColor:  Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white,)),

                ),
                controller: searchController,
                              )),
        body: selectedCategory == null
            ? CategoryTab(
                onClick: onCategoryClick,
              )
            : DataTab(
                categoryId: selectedCategory!.id,),
      ),
    );
  }

  CategoryModel? selectedCategory;
  onCategoryClick(category) {
    selectedCategory = category;
    setState(() {});
  }
}

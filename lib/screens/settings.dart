import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  static const String routeName = "setting";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage("assets/images/pattern.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              borderSide: BorderSide(color: Colors.transparent)),
          backgroundColor: Colors.green,
          title: const Text("Settings",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Text("Language",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.zero), color: Colors.white),
                child: Text("English", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

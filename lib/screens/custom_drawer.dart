import 'package:flutter/material.dart';

import 'content_drawer.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer(this.onClick,{super.key });

  Function onClick;
  static const CATEGORY_Id = 1;
  static const SETTING_ID = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 100,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
              child: Text("News App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
              onTap: () {
                onClick(CATEGORY_Id);
                Navigator.pop(context);
              },
              child: ContantDrawer(
                text: 'Categories',
                icon: Icons.list,
              )),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              onClick(SETTING_ID);
            },
            child: ContantDrawer(
              text: 'Settings',
              icon: Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}

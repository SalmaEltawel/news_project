import 'package:flutter/material.dart';

class ContantDrawer extends StatelessWidget {
   ContantDrawer({super.key,required this.text,required this.icon});
 IconData icon;
 String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 40,color: Colors.black,),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 30),
        )
      ],
    );
  }
}

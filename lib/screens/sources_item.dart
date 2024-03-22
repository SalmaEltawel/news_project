import 'package:flutter/material.dart';
import 'package:news/models/source_response.dart';

class SourcesItem extends StatelessWidget {
  Sources sources;
  bool isSelected;

  SourcesItem({super.key, required this.sources, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),
      child: Text(sources.name??"",
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.green,
          )),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.transparent,
        border: Border.all(color: Colors.green),

        borderRadius: BorderRadius.circular(30,)

      ),
    );
  }
}

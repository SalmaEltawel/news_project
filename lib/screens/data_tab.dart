import 'package:flutter/material.dart';
import 'package:news/screens/news_tab.dart';

import '../shared/network/remote/api_manager.dart';

class DataTab extends StatelessWidget {
   DataTab({super.key,required this.categoryId});
  String categoryId;

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: ApiManager().getSources(categoryId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text("SomeThing Went Wrong"));
        }
        var sourcesList = snapshot.data?.sources ?? [];
        if (sourcesList.isEmpty) {
          return const Center(child: Text("No Sources"));
        }
        return NewsTabs(sources: sourcesList);
      },
    );
  }
}

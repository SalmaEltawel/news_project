import 'package:flutter/material.dart';
import 'package:news/models/source_response.dart';
import 'package:news/screens/news_item.dart';
import 'package:news/screens/sources_item.dart';
import 'package:news/shared/network/remote/api_manager.dart';
class NewsTabs extends StatefulWidget {
  List<Sources> sources;
  NewsTabs({super.key, required this.sources});
  @override
  State<NewsTabs> createState() => _NewsTabsState();
}
class _NewsTabsState extends State<NewsTabs> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              isScrollable: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              tabs: widget.sources
                  .map(
                    (e) => Tab(
                      child: SourcesItem(
                          sources: e,
                          isSelected: widget.sources.elementAt(selectedIndex) == e),
                    ),
                  )
                  .toList(),
            )),
        FutureBuilder(future:ApiManager.getNewsData(
            widget.sources[selectedIndex].id??"")
            , builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text("SomeThing Went Wrong"));
          }
          var articlesList = snapshot.data?.articles ?? [];
          if (articlesList.isEmpty) {
            return const Center(child: Text("No articles"));
          }
          return Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
              return NewsItems(articles:articlesList[index]);
            },
              itemCount: articlesList.length, separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 12,);
              },
            ),
          );
            },)
      ],
    );
  }
}
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:news/models/news_response.dart';
import 'package:news/models/source_response.dart';
import 'package:news/shared/constant/constant.dart';
class ApiManager{
  Future<SourcesResponse> getSources(String category,) async{
    Uri url=Uri.https(Constants.BASE_URL,"/v2/top-headlines/sources",
        {"apiKey":"45b52354f04845c4b65262caf72fbab9","category":category,});
   http. Response response=await  http.get(url);
   Map<String,dynamic> json=jsonDecode(response.body);
    return SourcesResponse.fromJson(json);
  }
  static Future<NewsResponse> getNewsData(String sourceId)async{
    Uri url=Uri.https(
        Constants.BASE_URL,"/v2/everything",{"sources":sourceId});
   var response= await http.get(url,headers:
   {"x-api-key":"45b52354f04845c4b65262caf72fbab9"});
   var json= jsonDecode(response.body);
   return NewsResponse.fromJson(json);
  }
}
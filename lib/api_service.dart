
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_using_api/news_model.dart';

class News_Data_Service{
  Future<List<Newsmodel>> getNewsmodel() async{
    final url="https://newsapi.org/v2/everything?q=tesla&from=2023-01-10&sortBy=publishedAt&apiKey=ec75c02d79f648b8b4cde95b0843b145";
    var response= await http.get(Uri.parse(url));
    if (response.statusCode==200){
      var body = json.decode(response.body);
      print(body);
      List<Newsmodel> _data = List<Newsmodel>.from(
        body["articles"].map((e) =>Newsmodel.fromJson(e)).toList());

      return _data;
    }
    else{
      List<Newsmodel>_data=[];
      return _data;
    }
  }

}

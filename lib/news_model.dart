import 'package:news_app_using_api/source_model.dart';

class Newsmodel{
Source? source;
String? title;
String?  desc;
String? UrlToImage;

Newsmodel({
  this.source,
  this.title,
  this.desc,
  this.UrlToImage
});
factory Newsmodel.fromJson(Map<String,dynamic> json){
 return Newsmodel(
     source: Source.fromJson(json["source"]),
     title: json["title"],
     desc: json["description"],
     UrlToImage: json["urlToImage"],
 );
}
}
class Newsmodel{
String? source;
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
     source: json["source"],
     title: json["title"],
     desc: json["description"],
     UrlToImage: json["urlToImage"],
 );
}
}
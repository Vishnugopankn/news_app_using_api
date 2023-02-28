import 'package:flutter/material.dart';
import 'package:news_app_using_api/api_service.dart';
import 'package:news_app_using_api/news_model.dart';

class News_App extends StatefulWidget {
  const News_App({Key? key}) : super(key: key);

  @override
  State<News_App> createState() => _News_AppState();
}

class _News_AppState extends State<News_App> {

  News_Data_Service client = News_Data_Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Newsmodel>>(
          future: client.getNewsmodel(),
          builder: (BuildContext context,
              AsyncSnapshot<List<Newsmodel>>snapshot){
            if (snapshot.hasData) {
              return PageView.builder(
                  controller: PageController(initialPage: 0),
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, int i) {
                    return
                      Column(
                        children: [
                          snapshot.data![i].UrlToImage.toString()!=null ?
                          Image.network(snapshot.data![i].UrlToImage.toString()):
                          Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                          Text(snapshot.data![i].title.toString()),
                        ],
                      );
                    /* News_Container(
                      imgUrl: snapshot.data![i].UrlToImage.toString(),
                      newsDes:snapshot.data![i].desc.toString(),
                      newsHead: snapshot.data![i].title.toString(),
                      newsUrl: snapshot.data![i].title.toString(),
                      );
                  }*/
                  }
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          ),

    );
  }
}

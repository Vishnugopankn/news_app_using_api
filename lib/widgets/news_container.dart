import 'package:flutter/material.dart';

class News_Container extends StatelessWidget {
  String? imgUrl;
  String? newsHead;
  String? newsDes;
  String? newsUrl;
 News_Container({this.imgUrl,this.newsHead,this.newsDes,this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(height: 400,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
              "$imgUrl"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("$newsHead",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),

                SizedBox(height: 5,),

                Text("$newsDes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

              ],
            ),
          ),

          Spacer(),

          ElevatedButton(onPressed: (){
            print("Going to $newsUrl");
          },
              child: Text("Read More")),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

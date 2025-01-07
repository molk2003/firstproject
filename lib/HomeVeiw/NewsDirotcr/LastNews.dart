
import 'package:aljazera/HomeVeiw/NewsDirotcr/Tabs/Favvorit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Tabs/News.dart';
import 'Tabs/Topics.dart';
import 'Tabs/Videos.dart';
import 'package:aljazera/drawe/Drawe.dart';


class News_Home1 extends StatefulWidget {


  @override
  _News_Home createState() => _News_Home();

}


class _News_Home extends State<News_Home1> {
  int index = 0;


  // List<Widget> screans = [
  //
  //
  //
  //
  //   // YoutubeVideoScreen(),
  //
  //
  // ];



  // List<Widget> Titiles=[
  //   // Center(
  //   //   child: Text("LAST NAWS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  //   //),
  //   Center(
  //     child: Text("Live",style: TextStyle(fontWeight: FontWeight.bold),),
  //   ),
  //
  //
  //   Center(
  //     child: Text("Last News",style: TextStyle(fontWeight: FontWeight.bold),),
  //   ),
  //
  //
  //   Center(
  //     child: Text("Video",style: TextStyle(fontWeight: FontWeight.bold),),
  //   ),
  //
  //   Center(
  //     child: Text("Favorit",style: TextStyle(fontWeight: FontWeight.bold),),
  //   ),
  //
  // ];


  GlobalKey<ScaffoldState> tabar=GlobalKey();

  @override
  Widget build(BuildContext context) {



    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: tabar,
          appBar: AppBar(
            backgroundColor: Colors.transparent, // لتجنب تغطية التدرج
            bottomOpacity: 1,
            toolbarHeight: 50,

            bottom: TabBar(
              indicatorColor: Colors.orange,
              indicatorWeight: 4.0,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(icon: Icon(Icons.article), text: "News"),
                Tab(icon: Icon(Icons.topic), text: "Topics"),
                Tab(icon: Icon(Icons.video_collection), text: "Videos"),
                Tab(icon: Icon(Icons.favorite), text: "Favorites"),
              ],

            ),
            // titleTextStyle: TextStyle(backgroundColor: Colors.red),
            // title: Titiles[index],
            // elevation: 4,
            // backgroundColor:primary1,
            // leading: Icon(Icons.list,size: 20,color: Colors.white,),


            // leading: Builder(builder: (BuildContext context) {
            //   return IconButton(icon: Icon(Icons.menu, ),
            //       onPressed: () {
            //         Scaffold.of(context).openDrawer();
            //       }
            //   );
            // }
            // ),

            // actions: [
            //   IconButton(onPressed: () {
            //
            //   },
            //       icon: Icon(Icons.search, size: 25, )),
            //   IconButton(onPressed: () {
            //
            //
            //   },
            //       icon: Icon(
            //         Icons.notification_add_sharp, size: 25,)
            //   ),
            //
            // ],
          ),


          body: TabBarView(
            children: [
              LastNews(),
              Topics(),
              VideoPlayerExample(),
              Favorit(),
            ],
          ) ,


          drawer: Drwer(),




       ),
    );
  }


}











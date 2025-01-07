
import 'package:aljazera/HomeVeiw/NewsDirotcr/LastNews.dart';
import 'package:aljazera/HomeVeiw/Sports/News_sport.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aljazera/drawe/Drawe.dart';
import './Economic/LastNewsEconomic.dart';


class Homebasic  extends StatefulWidget {
  @override
  _News_Home createState() => _News_Home();

}


class _News_Home extends State<Homebasic> {
  int index = 0;


  List<Widget> screans = [

    News_Home1(),
    NewsHomeSports(),
    Lastnewseconomic(),
    // Profail(),
    // Football(),



  ];

  // List<Widget> Titiles=[
  //   // Center(
  //   //   child: Text("LAST NAWS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  // //),
  // Center(
  //     child: Text("vidoes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  //   ),
  //
  //
  //   Center(
  //     child: Text("Topics",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  //     ),
  //
  //
  // ];

  // final themee = GetStorage();

  @override
  Widget build(BuildContext context) {


    return Scaffold(


      body:  screans[
        index
        ],


        drawer: Drwer(),






    bottomNavigationBar: Container(
    decoration: BoxDecoration(

    ),
    child: AnimatedBottomNavigationBar(


      iconSize: 30,
    gapWidth: 20,
    icons: [
    FontAwesomeIcons.newspaper, // News icon
    Icons.sports_soccer,        // Sports icon
    Icons.trending_up,          // Trending icon
    Icons.medical_services,     // Health icon
    Icons.music_note,           // Music icon
    ],

    activeIndex: index,
    backgroundColor: Colors.transparent,
    inactiveColor: Colors.white,
    activeColor: Colors.green,
    gapLocation: GapLocation.end,
    notchSmoothness: NotchSmoothness.smoothEdge,
    onTap: (value) {
    setState(() {
    index = value;
    });
    },
    ),
    )





    );
  }


}











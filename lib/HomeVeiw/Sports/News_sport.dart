import 'package:aljazera/HomeVeiw/Sports/Football.dart';
import 'package:aljazera/HomeVeiw/Sports/homee.dart';
import 'package:aljazera/consept.dart';
import 'package:aljazera/drawe/Drawe.dart';
import 'package:aljazera/home/home.dart';
import 'package:comment_box/comment/comment.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsHomeSports extends StatefulWidget {
  @override
  State<NewsHomeSports> createState() => _NewsHomeSports();
}

// Container contineru( Color co,){
//
//
//
// }

class _NewsHomeSports extends State<NewsHomeSports> {

  double x = 0;
  double y = 0;
  bool isDrwer = false;

  final List<String> imagePaths = [
    'images/english.jpeg',
    'images/laliaga.jpg',
    'images/s.jpg',
  ];

  final List<Widget> _navigation = [
    Icon(Icons.account_box),
    Icon(Icons.ten_k_sharp),
    Icon(Icons.sports_football),
    Icon(Icons.kayaking),
    Icon(Icons.folder_copy),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // drawer: Drwer(),

      body: SafeArea(
        child: Stack(
            children: [


              Container(

                  height: double.infinity,
                  width: double.infinity,

                  child: Image(
                    // image: AssetImage("images/v.jpeg"), fit: BoxFit.cover,)),
                    image: AssetImage("images/dd.jpeg"), fit: BoxFit.cover,)


              ),


              Container(
                padding: EdgeInsets.only(top: 50),
                height: double.infinity,
                width: double.infinity,
                // color: primary,
                child: Column(

                  children: [
                    Center(
                        child: Text(
                          "الاكثر مشاهدة",
                          style: TextStyle(
                            // color: primary2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    Container(
                      width: double.infinity,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 2.1,
                          aspectRatio: 2.0,
                          autoPlayInterval: Duration(seconds: 5),
                        ),
                        items: imagePaths.map((path) {
                          return Container(
                            // width: 800,
                            margin: EdgeInsets.only(top: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(path),

                                fit: BoxFit.cover,
                                scale: 10
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [

                          Row(


                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage('images/ar.png'),

                                    radius: 40,

                                  ),



                                ],
                              ),


                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(

                                    children: [
                                      for (var y = 0; y < 10; y++)

                                        Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage("images/real.jpg"),

                                              radius: 30,

                                            ),


                                            Container(
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: primary1,
                                                  borderRadius: BorderRadius.circular(20)
                                              ),

                                              width: 110,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.add),

                                                  Text("RealMadrid",style: TextStyle(fontWeight: FontWeight.bold),),
                                                ],
                                              ),


                                            )

                                          ],
                                        ),



                                    ],
                                  ),
                                ),
                              )

                            ],

                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 350,
                                    height: 160,
                                    decoration: BoxDecoration(
                                        color: primary1,
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        image: DecorationImage(
                                            image: AssetImage('images/f.jpg'),
                                            fit: BoxFit.cover)),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Football1()));
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                Colors.black12.withOpacity(
                                                    0.1),
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                                  " Last News",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30,
                                                      fontWeight: FontWeight
                                                          .bold),
                                                )))),
                                  )),
                            ],
                          ),





                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),


    );
  }
}

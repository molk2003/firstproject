import 'package:aljazera/HomeVeiw/Homebasic.dart';
import 'package:aljazera/consept.dart';
import 'package:aljazera/drawe/Drawe.dart';
import 'package:aljazera/home/home.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Sports/News_sport.dart';

class Home_View extends StatefulWidget {
  @override
  State<Home_View> createState() => _Home_View();
}

// Container contineru( Color co,){
//
//
//
// }

class _Home_View extends State<Home_View> {
  final List<String> imagePaths = [
    'images/gaza1.jpeg',
    'images/gaza2.jpg',
    'images/gaza3.jpg',
  ];
  final List<String> imagePaths1 = [
    'images/ddd.webp',
    'images/f.jpg',
    'images/g.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary1,
        // title: Titiles[index],
        elevation: 4,
        // backgroundColor:Colors.white,
        // leading: Icon(Icons.list,size: 20,color: Colors.white,),

        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add_sharp,
                size: 25,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drwer(),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        height: double.infinity,
        // color: primary,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
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
                          margin: EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(path),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 2.1,
                        aspectRatio: 2.0,
                        pageViewKey: PageStorageKey(4),
                        autoPlayInterval: Duration(seconds: 2),
                      ),
                      items: imagePaths1.map((path) {
                        return Container(
                          margin: EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(path),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: primary1,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('images/tar.jpeg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "صحة",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                        GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => NewsHomeSports()));
                            },
                            child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: primary1,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('images/kora.jpg'),
                                      fit: BoxFit.cover)),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    "Sports",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: primary1,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('images/tar.jpeg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "ترفيه",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: primary1,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('images/econmic.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "econmic",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 350,
                          height: 160,
                          decoration: BoxDecoration(
                              color: primary1,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('images/news.webp'),
                                  fit: BoxFit.cover)),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homebasic()));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    "News",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

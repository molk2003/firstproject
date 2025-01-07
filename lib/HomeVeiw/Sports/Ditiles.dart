import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:like_button/like_button.dart';




class Ditiles extends StatefulWidget {
  final String title1;
  final String description1;
  final String imagePath1;

  Ditiles({
    required this.title1,
    required this.description1,
    required this.imagePath1,
  });

  @override
  _DitilesState createState() => _DitilesState();
}

class _DitilesState extends State<Ditiles> {
  final fav = GetStorage();
  bool isFavorite = false; // حالة لتتبع المفضلة

  @override
  void initState() {
    super.initState();
    _checkIfFavorite();
  }

  void _checkIfFavorite() {
    var storedFavorites = fav.read('favorites') as List<dynamic>? ?? [];
    isFavorite = storedFavorites.any((item) => item['title'] == widget.title1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الخبر"),
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imagePath1),
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title1,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.description1,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      size: 30,
                      color: isFavorite ? Colors.yellow : Colors.grey,
                    ),
                    onPressed: () {
                      _addToFavorites(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share_rounded, size: 30),
                    onPressed: () {
                      // إضافة الوظيفة عند الضغط
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.save_alt, size: 30),
                    onPressed: () {
                      // إضافة الوظيفة عند الضغط
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: LikeButton(
                      size: 30,
                      likeCount: 400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addToFavorites(BuildContext context) {
    var storedFavorites = fav.read('favorites') as List<dynamic>? ?? [];
    List<Map<String, String>> favorites = storedFavorites.map((item) {
      return Map<String, String>.from(item as Map<dynamic, dynamic>);
    }).toList();


    Map<String, String> newFavorite = {
      'title': widget.title1,
      'description': widget.description1,
      'imagePath': widget.imagePath1,
    };

    if (!favorites.any((item) => item['title'] == widget.title1)) {
      favorites.add(newFavorite);
      fav.write('favorites', favorites);
      setState(() {
        isFavorite = true; // تحديث الحالة
      });
      Get.snackbar('نجاح', 'تم إضافة الخبر إلى المفضلة', snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('الخبر موجود مسبقًا', 'هذا الخبر موجود بالفعل في المفضلة',
          backgroundColor: Colors.blue,
          messageText: Icon(Icons.warning_amber),
          duration: Duration(seconds: 2),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

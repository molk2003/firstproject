import 'package:aljazera/HomeVeiw/Sports/Ditiles.dart';
import 'package:aljazera/consept.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'DetilsPage.dart'; // تأكد من استيراد صفحة التفاصيل

class Favorit extends StatefulWidget {
  @override
  _FavoritState createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  List<Map<String, String>> favorites = [];
  List<Map<String, String>> filteredFavorites = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadFavorites(); // تحميل المفضلات عند بدء الصفحة
  }

  void _loadFavorites() {
    final box = GetStorage();
    var stored = box.read('favorites') as List<dynamic>? ?? [];
    favorites = stored.map((item) {
      return Map<String, String>.from(item as Map<dynamic, dynamic>);
    }).toList();
    filteredFavorites = List.from(favorites); // البدء بالعرض الكامل
    setState(() {}); // تحديث الواجهة بعد تحميل المفضلات
  }

  void _removeFavorite(int index) {
    setState(() {
      favorites.removeAt(index);
      filteredFavorites
          .removeAt(index); // تأكد من إزالة العنصر من القائمة المرشحة
      // تحديث التخزين بعد الحذف
      final box = GetStorage();
      box.write('favorites', favorites);
    });
  }

  void _filterFavorites(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        // إذا كانت خانة البحث فارغة، اعرض جميع المفضلات
        filteredFavorites = List.from(favorites);
      } else {
        // تصفية المفضلات بناءً على البحث
        filteredFavorites = favorites
            .where((favorite) =>
                favorite['title']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن مفضلتك...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: _filterFavorites,
            ),
            SizedBox(height: 16),
            filteredFavorites.isEmpty
                ? Center(
                    child: Text('لا توجد عناصر في المفضلة',
                        style: TextStyle(fontSize: 18)))
                : Expanded(
                    child: ListView.builder(
                      itemCount: filteredFavorites.length,
                      itemBuilder: (context, index) {
                        var favorite = filteredFavorites[index];
                        // استدعاء دالة التصميم
                        return FavoriteItem(context, favorite, index);
                      },
                    ),
                  ),
          ],
        ),
      ),
      // backgroundColor: primary1,
    );
  }

  Widget FavoriteItem(
      BuildContext context, Map<String, String> favorite, int index) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Ditiles(
                title1: favorite['title']!,
                description1: favorite['description']!,
                imagePath1: favorite['imagePath']!,
              ),
            ),
          );
        },
        child: Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(

                    children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(favorite['imagePath']!),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favorite['title']!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 8),
                        Text(
                          maxLines: 2,
                          favorite['description']!,
                          style: TextStyle(fontSize: 14),
                          textDirection: TextDirection.rtl,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("تأكيد الحذف"),
                              content:
                                  Text("هل أنت متأكد أنك تريد حذف هذا العنصر؟"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("إلغاء"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _removeFavorite(index);
                                    Navigator.pop(context);



                                  },
                                  child: Text("حذف"),
                                ),
                              ],
                            );
                          });
                    },
                  )
                ]
                )
            )
        )
    );
  }
}

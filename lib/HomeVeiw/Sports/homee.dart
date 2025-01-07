import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:like_button/like_button.dart';

class DetilsPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  DetilsPage({required this.title, required this.description, required this.imagePath});

  final box = GetStorage(); // تخزين البيانات باستخدام GetStorage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildImageSection(imagePath),
              SizedBox(height: 20),
              _buildTextSection(title, description),
              SizedBox(height: 20),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // دالة لبناء قسم الصورة
  Widget _buildImageSection(String imagePath) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  // دالة لبناء قسم النصوص (العنوان والوصف)
  Widget _buildTextSection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
        SizedBox(height: 20),
        Text(
          description,
          style: TextStyle(fontSize: 18),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }

  // دالة لبناء أزرار الإجراءات (الحفظ، المشاركة، الإعجاب)
  Widget _buildActionButtons() {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.save, size: 40),
            onPressed: () {
              _addToFavorites();
            },
          ),
          Icon(Icons.share_rounded, size: 40),
          Icon(Icons.save_alt, size: 40),
          LikeButton(
            size: 40,
            likeCount: 400,
          ),
        ],
      ),
    );
  }

  // دالة لإضافة الأخبار إلى المفضلة
  void _addToFavorites() {
    // قراءة البيانات من GetStorage وتحديد النوع الصحيح
    var storedFavorites = box.read('favorites') as List<dynamic>? ?? [];
    List<Map<String, String>> favorites = storedFavorites.map((item) {
      return Map<String, String>.from(item as Map<dynamic, dynamic>);
    }).toList();

    // إنشاء المفضلة الجديدة
    Map<String, String> newFavorite = {
      'title': title,
      'description': description,
      'imagePath': imagePath,
    };

    // التحقق مما إذا كان الخبر موجودًا بالفعل في المفضلة
    if (!favorites.any((item) => item['title'] == title)) {
      favorites.add(newFavorite);
      box.write('favorites', favorites);
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

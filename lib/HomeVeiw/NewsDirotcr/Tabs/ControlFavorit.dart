// import 'package:flutter/foundation.dart';
// import 'package:get_storage/get_storage.dart';
//
// class FavoriteProvider with ChangeNotifier {
//   List<Map<String, String>> _favorites = [];
//   List<Map<String, String>> _filteredFavorites = [];
//   String _searchQuery = '';
//
//   List<Map<String, String>> get favorites => _filteredFavorites;
//
//   FavoriteProvider() {
//     _loadFavorites();
//   }
//
//   void _loadFavorites() {
//     final box = GetStorage();
//     var storedFavorites = box.read('favorites') as List<dynamic>? ?? [];
//     _favorites = storedFavorites.map((item) {
//       return Map<String, String>.from(item as Map<dynamic, dynamic>);
//     }).toList();
//     _filteredFavorites = List.from(_favorites); // البدء بالعرض الكامل
//     notifyListeners(); // إخطار المستمعين
//   }
//
//   void removeFavorite(int index) {
//     if (index > 0 && index < _favorites.length) { // تحقق من الفهرس
//       _favorites.removeAt(index);
//       final box = GetStorage();
//       box.write('favorites', _favorites);
//       notifyListeners(); // إخطار المستمعين
//     }
//   }
//
//   void filterFavorites(String query) {
//     _searchQuery = query;
//     if (query.isEmpty) {
//       _filteredFavorites = List.from(_favorites);
//     } else {
//       _filteredFavorites = _favorites.where((favorite) {
//         return favorite['title']!.toLowerCase().contains(query.toLowerCase());
//       }).toList();
//     }
//     notifyListeners(); // إخطار المستمعين
//   }
// }

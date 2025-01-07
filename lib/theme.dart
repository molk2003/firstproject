import 'package:aljazera/consept.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themee {
  final lighttheme = ThemeData(cardColor: Colors.red).copyWith();

  final darkmod = ThemeData.dark().copyWith(
      );

  //
  // _getstors: كائن من GetStorage لتخزين البيانات محليًا.
  // _darkthem: مفتاح لتخزين حالة الثيم الداكن (dark theme).

  final _getstors = GetStorage();
  final _darkthem = "isDarkTheme";

  // هذه الدالة تقوم بحفظ حالة الثيم (داكن أو فاتح) في التخزين المحلي.

  void saveThemeData(bool isdark) {
    _getstors.write((_darkthem), isdark);
  }

  // هذه الدالة تتحقق مما إذا كان الثيم الداكن محفوظًا في التخزين. إذا لم يكن هناك قيمة محفوظة، فإنها تعيد
  bool isSavedarkmod() {
    return _getstors.read(_darkthem) ?? true;
  }

  // هذه الدالة تحدد وضع الثيم الحالي بناءً على القيمة المخزنة

  ThemeMode getTheme() {
    return isSavedarkmod() ? ThemeMode.light : ThemeMode.dark;
  }

  // هذه الدالة تغير وضع الثيم بين الفاتح والداكن، ثم تحفظ الحالة الجديدة.
  void changemod() {
    Get.changeThemeMode(isSavedarkmod() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedarkmod());
  }
}

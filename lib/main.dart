
import 'package:aljazera/home/home1.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'theme.dart';
import 'HomeVeiw/Homebasic.dart';

void main() async {
  await GetStorage.init();
  runApp(Aljazera());
 // await Firebase.initializeApp();
}

class Aljazera extends StatefulWidget {
  @override
  State<Aljazera> createState() => _AljazeraState();
}

class _AljazeraState extends State<Aljazera> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: Themee().lighttheme,
      darkTheme: Themee().darkmod,
      themeMode: Themee().getTheme(),
      debugShowCheckedModeBanner: false,
      home: bakscren(),
      // home: Homebasic(),

    );
  }
}

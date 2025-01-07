import 'package:flutter/material.dart';
import 'package:animations/animations.dart'; // استيراد الحزمة
import 'kefjejif.dart'; // استيراد الصفحات أو الملفات المرتبطة
import 'jj.dart'; // استيراد الصفحات أو الملفات المرتبطة

class ss extends StatefulWidget {
  final String section;

  ss({required this.section});

  @override
  State<ss> createState() => _ssState();
}

class _ssState extends State<ss> {
  GlobalKey<ScaffoldState> scafold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scafold,

        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("الصفحة الأولى"),
              ),
              Tab(
                child: Text("الصفحة الثانية"),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            PageTransitionSwitcher(
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                  FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              ),
              child: hh(), // الصفحة الأولى
            ),
            PageTransitionSwitcher(
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                  FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              ),
              child: hh1(), // الصفحة الثانية
            ),
          ],
        ),

        backgroundColor: Colors.red,
      ),
    );
  }
}

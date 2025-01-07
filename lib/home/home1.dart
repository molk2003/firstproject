import 'dart:async';

import 'package:aljazera/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class bakscren extends StatefulWidget{
  @override
   _bakscren createState()=> _bakscren();
}

class _bakscren extends State<bakscren>{

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3 ),navegaetot);

  }

  @override
  Widget build(BuildContext context) {



    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(

        image: DecorationImage(
          image: AssetImage("images/back.jpg"),fit: BoxFit.cover

        )
      ),

    );

  }
  void navegaetot(){
   Get.to ( home(),
     transition: Transition.cupertino,
     duration: Duration(seconds: 3)

   );

  }


}



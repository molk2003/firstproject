

import 'package:aljazera/consept.dart';
import 'package:aljazera/login/Singin.dart';
import 'package:aljazera/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primary,

      ),
      child: Container(
        margin: EdgeInsets.only(top: 150),
        child: Column(
          children: [



            Image.asset("images/zico.png",height: 200,width: 200,),

                SizedBox(
                  height: 30,
                ),


            Container(
              decoration: BoxDecoration(
                  color: Color(0xff00c476).withOpacity(0.4),

                borderRadius: BorderRadius.circular(20.0)
              ),

              width: 300,
              height: 60,
              child: MaterialButton(onPressed: (){

              Get.to(()=> login(),

                transition: Transition.upToDown,
                duration: Duration(seconds: 1)
              );

              },

                  child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 30,),),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfff2f2fe),

                  borderRadius: BorderRadius.circular(20.0)
              ),

              width: 300,
              height: 60,
              child: MaterialButton(onPressed: (){


                Get.to(()=> Sing_in(),

                    transition: Transition.downToUp,
                    // duration: Duration(seconds: 1)
                );
              },
                child: Text("SIGN UP",style: TextStyle(color: Colors.black,fontSize: 30,),),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text("LOGIN WITH SOCIL MEDIA",style: TextStyle(color: Colors.white,fontSize: 15,decorationThickness: double.nan)),


            SizedBox(
              height: 20,
            ),




            Container(
              margin: EdgeInsets.only(left: 110),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.apple,size: 50,color: Colors.white,
                  ),
                  SizedBox(
                    width: 40,
                  ),

                  FaIcon(
                    FontAwesomeIcons.facebook,size: 40,color: Colors.blue,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,size: 40,color: Colors.blue,
                  ),
                ],
              ),
            ),











          ],



        ),
      ),






    );
  }


}
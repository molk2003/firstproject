
import 'package:aljazera/theme.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Setting extends StatefulWidget{
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  // get value => null;
  //
  // get onChanged => null;
  //
  // get isDarkMode => null;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
 return Scaffold(

appBar: AppBar(

  leading:Builder(builder: (BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back_ios_rounded, ),
        onPressed: () {
          Navigator.pop(context);
        }
    );
  }
  ),
),


body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


          Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          Container(

            child: Column(


              children: [


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(


                    children: [
                      Icon(Icons.notification_add_sharp),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Push notifications",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 180,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),


              ],

            ),


            height: 50,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.2),
          ),
      SizedBox(
        height: 20,
      ),
      Text("Supports",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

      Container(

        child: Column(


          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(


                children: [
                  Icon(Icons.notification_add_sharp),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Push notifications",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),


          ],

        ),


        height: 50,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.2),
      ),
      Text("DARK MOOD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

      Container(

        child: Column(


          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Theme"),
                  Switch(
                    value: Themee().isSavedarkmod(), // حالة التبديل بناءً على الثيم الحالي
                    onChanged: (value) {
                      Themee().changemod(); // تغيير الثيم
                    },
                  ),
                ],
              ),
            ),


          ],

        ),


        height: 70,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.2),
      ),


        ],
      ),
),






 );
  }
}
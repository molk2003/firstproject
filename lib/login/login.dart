import 'dart:ui';
import 'package:aljazera/Compnnt.dart';
import 'package:aljazera/HomeVeiw/Homebasic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'Singin.dart';
import '../consept.dart';

class login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  TextEditingController amail = TextEditingController();
  TextEditingController pass = TextEditingController();
  final email="zico@z";
  final p="123";
  final _formKey = GlobalKey<FormState>(); // ج
  var obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:    AppBar(
        backgroundColor: primary,
        actions: <Widget>[
          PopupMenuButton<String>(

            icon: Icon(Icons.language), // أيقونة القائمة المنسدلة
            onSelected: (String value) {
              print("$value");
// أضف هنا ما تريد فعله عندما يتم اختيار عنصر من القائمة
            },
            itemBuilder: (BuildContext context) {
              return {'العربية', 'English','Frace'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),






    body: main(),



    );
  }

  Widget main() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: primary,
      ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Image.asset(
                "images/zico.png",
                height: 180,
                width: 250,
              ),
              Container(
                width: 350,
                height: 440,
                decoration: BoxDecoration(
                  color: primary1,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(110),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(110)),
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    // scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: AutofillHints.birthday),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                              // onFieldSubmitted: (value) {
                              //   Homebasic(); // تسجيل الدخول عند الضغط على Enter
                              // },
                            controller: amail,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "enter email";
                              }
                              return null;
                            },



                            // TextFormField(
                            decoration: InputDecoration(
                              // filled: true,
                              // fillColor: Colors.amberAccent,

                              labelText: "Email",
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              suffixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            // onFieldSubmitted: (value) {
                            //   Homebasic(); // تسجيل الدخول عند الضغط على Enter
                            // },
                            controller: pass,
                            obscureText: obscureText,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "enter password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              // filled: true,
                              // border: OutlineInputBorder(),
                              // fillColor: Colors.amberAccent,

                              labelText: "pasword",

                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText =!obscureText;
                                  });
                                },
                                child: obscureText ? Icon(
                                        Icons.visibility_off,
                                        color: Colors.white,
                                      ) : Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),


                        Container(
                          margin: EdgeInsets.only(left: 160),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Foreget Passowrd?",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              )),
                        ),

                        DefoultButon(
                          function: () {
                            Verificatoin();
                          },
                          height: 60,
                          width: 300,
                          backgrond: primary3,
                          radius: 20,
                          text: 'log in',
                        ),


                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: TextButton(
                              onPressed: () {

                                Get.to(()=> Sing_in(),

                                    transition: Transition.size,
                                    duration: Duration(seconds: 2)
                                );
                              },
                              child: Text(
                                "Don't have an account ?",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 1,
                    width: 150,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 1,
                    width: 150,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                child: Row(

                  mainAxisSize: MainAxisSize.max
                  ,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.apple,
                      size: 50,
                      color: Colors.white,
                    ),

                    FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                      color: Colors.white,
                    ),
                    // SizedBox(
                    //   width: 40,
                    // ),
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

void Verificatoin(){

  if (_formKey.currentState!.validate() ) {





      showDialog(context: context, builder: (builder){

        return AlertDialog(

          content: Card(

            child: Text("كلمه السر او المستخدم خطأ ",style: TextStyle(fontSize: 25,color: Colors.red),),

          ),

        );
      });
    }




  }

  }





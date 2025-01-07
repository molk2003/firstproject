import 'dart:ui';

import 'package:aljazera/Compnnt.dart';
import 'package:aljazera/HomeVeiw/Homebasic.dart';
import 'package:aljazera/consept.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'login.dart';

class Sing_in extends StatefulWidget {
  @override
  _Sing_in createState() => _Sing_in();
}

class _Sing_in extends State<Sing_in> {
  var obscureText = false;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // ج

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
       color: primary1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              Form(

                key: _formKey,
                child: Column(
                  children: [



                    SizedBox(
                      height: 50,
                    ),
                    customTextFormField(
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.perm_contact_cal_rounded,
                            shadows: [
                              Shadow(
                                  color: Colors.red, offset: Offset(1, 1))
                            ],
                          ),
                        ),
                        controller: name,
                        width: 350,
                        textColor: Colors.white,
                        height: 60,
                        labelText: "name",
                        fontsize: 20,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter name";
                          }
                        }),
                    SizedBox(
                      height: 40,
                    ),
                    customTextFormField(
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.email,
                            shadows: [
                              Shadow(
                                  color: Colors.red, offset: Offset(1, 1))
                            ],
                          ),
                        ),
                        controller: email,
                        width: 350,
                        textColor: Colors.white,
                        height: 60,
                        labelText: "email",
                        fontsize: 20,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter email";
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      margin:
                          EdgeInsets.only(top: 30, right: 30, left: 30),
                      child: IntlPhoneField(
                        controller: phone,
                        initialCountryCode: 'YE',
                        decoration: InputDecoration(
                            // labelText: "phone ",
                            hintText: "phone",
                            hintStyle: TextStyle(
                                fontSize: 20, color: Colors.white),
                            suffixIcon: Icon(
                              CupertinoIcons.phone,
                            ),
                            border: OutlineInputBorder(
                            )),
                      ),
                    ),
                    Container(

                    //   height: 120,
                    //   width: 350,
                    //   child: CSCPicker(
                    //
                    //     onCountryChanged: (contry){},
                    //     onStateChanged: (s5t){},
                    //     onCityChanged: (city){},
                    //   ),
                    ),

                    SizedBox(
                      height: 14,
                    ),
                    customTextFormField(
                        obscureText: obscureText,
                        controller: password,
                        width: 350,
                        textColor: Colors.white,
                        height: 60,
                        labelText: "password",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter passsowrd";
                          }
                        },
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: obscureText
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility))),
                    SizedBox(
                      height: 14,
                    ),
                    customTextFormField(
                        obscureText: obscureText,
                        controller: password,
                        width: 350,
                        textColor: Colors.white,
                        height: 60,
                        labelText: "Confirm",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter passsowrd";
                          }
                        },
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: obscureText
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility))),
                    SizedBox(
                      height: 40,
                    ),

                    DefoultButon(
                      function: () {
                        Verciton();
                      },
                      height: 60,
                      width: 300,
                      backgrond: primary3,
                      radius: 20,
                      text: 'log in',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {

                          Get.off(()=> login(),

                              transition: Transition.leftToRight,
                              // duration: Duration(seconds: 1)
                          );
                        },
                        child: Text(
                          "I have an accounr",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void Verciton() {
    if (_formKey.currentState!.validate()) {
     Get.to(
         ()=>Homebasic(),
       transition: Transition.rightToLeftWithFade,
       duration: Duration(seconds: 4)
     );
    }
  }
}

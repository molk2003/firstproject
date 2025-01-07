
import 'package:aljazera/consept.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefoultButon ({
  double? width=120,
  double? height,
  Color? backgrond,
  required Function() function,
  String? text,
 double radius=0.0,



})=>
    Container(
    width: width,
      height: height,

      decoration: BoxDecoration(
          // color: Colors.white.withOpacity(0.2),
          color: backgrond,

          borderRadius: BorderRadius.circular(
            radius,

          ),
      ),
      margin: EdgeInsets.only(left: 5),

      child: MaterialButton(
        onPressed: function,


        child: Text(text!.toUpperCase(),style: TextStyle(fontSize: 20,color: Colors.black),),



      ),
    );






Widget customTextFormField({
  double? height = 50,
  double? width = 250,
  TextEditingController? controller,
  String? hintText,
  String? labelText,
  bool obscureText = false,
  Function(String)? onChanged,
  Function(String?)? onSaved,
  String? Function(String?)? validator,
  Color? textColor,
  double radius = 0,
  Icon? prefixIcon, // إضافة أيقونة في البداية
  GestureDetector? suffixIcon, // إضافة أيقونة في النهاية
  Color? borderColor, // التحكم في لون الحدود

  double fontsize=20,
  Function(String?)? onFieldSubmitted,


}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
    ),
    child: TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(fontSize: fontsize),
        prefixIcon: prefixIcon , // إضافة الأيقونة في البداية
        suffixIcon: suffixIcon , // إضافة الأيقونة في النهاية
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius), // التحكم في حواف الحدود
          borderSide: BorderSide(
            color: borderColor ?? Colors.white, // التحكم في لون الحدود
          ),
        ),
      ),
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      // style: TextStyle(color: textColor,fontSize: 40),
    ),
  );
}










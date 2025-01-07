import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Change extends StatefulWidget{
  @override
  State<Change> createState() => _ChangeState();
}
XFile? _image;

class _ChangeState extends State<Change> {
  @override
  Widget build(BuildContext context) {


    Future<void> _pickImage() async {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery); // فتح المعرض لاختيار الصورة

      setState(() {
        _image = image; // تخزين الصورة المختارة
      });
    }
    // TODO: implement build
   return  Scaffold(
     body: Column(
       children: [
         _image == null
             ? Text('لم يتم اختيار صورة.')
             : Image.file(File(_image!.path)), // عرض الصورة المختارة
         ElevatedButton(
           onPressed: _pickImage, // عند الضغط على الزر، يتم فتح المعرض
           child: Text('اختيار صورة'),
         ),
       ],
     ),
   );
  }
}
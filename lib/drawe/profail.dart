import 'dart:io';
import 'package:aljazera/Compnnt.dart';
import 'package:aljazera/consept.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Profail extends StatefulWidget {
  @override
  State<Profail> createState() => _ProfailState();
}

class _ProfailState extends State<Profail> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primary, primary1.withOpacity(0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ), // استبدل `primary` باللون الذي تريده
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              width: 450,
              height: 300,
        
              child: Stack(
        
                  children: [
        
                    Positioned(
                      top: 200,
                      left: 160,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: _image != null ? FileImage(_image!)  : AssetImage('images/z.jpg') as ImageProvider,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
        
                              color: Colors.white,
                            ),
                            onPressed: _pickImage,
                          ),
        
                        ),
                      ),
                    ),
                  ]
              ),
            ),
        
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text("Edit Your Information",style: TextStyle(fontSize: 30),),
        
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 270,
                    child: TextFormField(
                      maxLines: 1,
        
                      decoration: InputDecoration(
                        hintText: "Edit name.. ",
                        hintStyle: TextStyle(
                          overflow: TextOverflow.ellipsis,
        
                        ),
                        suffixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30))
                        )
        
                      ),
                    ),
                  ),
                  Container(
        
                    margin: EdgeInsets.only(top: 20),
                    width: 270,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Edit email..",
                          suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))
                        )
        
                      ),
                    ),
                  ),
        
                  Align(
        
                      alignment: Alignment.bottomLeft,
                      child: TextButton(onPressed: (){},
                          child: Text("Edit Password",
                            style: TextStyle(fontSize: 20),
                          )
                      )
                  ),
        
        
                  DefoultButon(
                    function: () {
        
                      showDialog(context: context, builder: (f){
                        return AlertDialog(
                          content: Container(
        
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
        
                                Card(
                                  child: Text("Are you sure of change your Info"),
                                ),
        
        
        
                              ],
        
                            ),
                          ),
                        actions: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Text("cancel")),
                          SizedBox(
                            width: 60,
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.change_circle_rounded))
                        ],
                        );
        
                      });
        
        
                    },
                    height: 60,
                    width: 300,
                    backgrond: primary3,
                    radius: 20,
                    text: 'Change',
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

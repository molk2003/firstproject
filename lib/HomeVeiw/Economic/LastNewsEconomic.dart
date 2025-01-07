import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lastnewseconomic extends StatelessWidget {
  const Lastnewseconomic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Image(
                image: AssetImage("images/uu.jpg"),
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Row(
                children: [

                  Stack(
                    children: [
                      Icon(Icons.person, size: 77),
                      Positioned(
                        top: 15,
                        left: 45,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                        ),
                      )
                    ],
                  ),


                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var y = 0; y < 10; y++)
                            Icon(Icons.access_time_filled, size: 77),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

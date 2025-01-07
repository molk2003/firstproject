// import 'dart:io';
// import 'package:aljazera/HomeVeiw/Homebasic.dart';
// import 'package:aljazera/consept.dart';
// import 'package:aljazera/login/login.dart';
// import 'package:aljazera/theme.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart'; // استيراد مكتبة image_picker
// import 'package:aljazera/app/setting.dart';
//
// class Drwer extends StatefulWidget {
//   @override
//   _DrwerState createState() => _DrwerState();
// }
//
// class _DrwerState extends State<Drwer> {
//   XFile? _selectedImage; // لتخزين الصورة المختارة من المعرض
//
//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery); // فتح المعرض لاختيار الصورة
//
//     setState(() {
//       _selectedImage = image; // تخزين الصورة المختارة
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: 250,
//       child: Column(
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text("Zico2m"),
//             accountEmail: Text("zico2001s@yahoo.com"),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: _selectedImage == null
//                   ? AssetImage("images/sss.webp") // الصورة الافتراضية
//                   : FileImage(File(_selectedImage!.path)) as ImageProvider, // عرض الصورة المختارة من المعرض
//               child: Align(
//                 alignment: Alignment.bottomRight,
//                 child: IconButton(
//                   onPressed: _pickImage, // استدعاء الدالة لاختيار الصورة عند الضغط على أيقونة الكاميرا
//                   icon: Icon(Icons.camera_alt_outlined),
//                 ),
//               ),
//             ),
//             decoration: BoxDecoration(
//               color: primary,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 15),
//             child: Container(
//               child: Row(
//                 children: [
//                   Icon(Icons.account_circle, size: 25),
//                   SizedBox(width: 2),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "account",
//                       style: TextStyle(fontSize: 18, letterSpacing: 2),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Divider(),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 5),
//             child: Row(
//               children: [
//                 Container(margin: EdgeInsets.only(left: 10)),
//                 Icon(Icons.save_alt, size: 20),
//                 SizedBox(width: 10),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Download",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 10),
//             child: Row(
//               children: [
//                 Container(margin: EdgeInsets.only(left: 4, top: 15)),
//                 Icon(Icons.settings, size: 20),
//                 SizedBox(width: 10),
//                 TextButton(
//                   onPressed: () {
//                     Get.to(Setting());
//                   },
//                   child: Text(
//                     "setting",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 10),
//             child: Row(
//               children: [
//                 Container(margin: EdgeInsets.only(left: 4, top: 15)),
//                 Icon(Icons.home, size: 20),
//                 SizedBox(width: 10),
//                 TextButton(
//                   onPressed: () {
//                     Get.to(News_Home());
//                   },
//                   child: Text(
//                     "HOME",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(top: 200),
//               child: Container(
//                 margin: EdgeInsets.only(left: 10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.logout_sharp, size: 25),
//                     SizedBox(width: 0),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => login()),
//                         );
//                       },
//                       child: Text(
//                         "log out",
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

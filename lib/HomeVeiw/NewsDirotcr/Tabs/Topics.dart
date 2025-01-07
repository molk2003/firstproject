import 'package:aljazera/HomeVeiw/NewsDirotcr/Tabs/DetilsPage.dart';
import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  const Topics({Key? key3});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  final TextEditingController searchController = TextEditingController();
  List<Map<String, String>> newsItems = [
    {
      'title': "طوفان الاقصى",
      'description': "استشهد وأصيب عشرات الفلسطينيين في قطاع غزة...",
      'imagePath': 'images/hz.jpg',
    },
    {
      'title': "تركيا",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/hz2.jpg',
    },
    {
      'title': "السودان",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/sss.webp',
    },
    {
      'title': "الانتخابات الامريكية",
      'description': "استشهد وأصيب عشرات غزةاستشهد وأصيب عشرات الاطق مختلفة في قطاع غزةاسيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع.",
      'imagePath': 'images/hz3.jpg',
    },

    {
      'title': "طوفان الاقصى",
      'description': "استشهد وأصيب عشرات الفلسطينيين في قطاع غزة...",
      'imagePath': 'images/hz.jpg',
    },
    {
      'title': "تركيا",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/hz2.jpg',
    },
    {
      'title': "السودان",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/sss.webp',
    },
    {
      'title': "الانتخابات الامريكية",
      'description': "استشهد وأصيب عشرات غزةاستشهد وأصيب عشرات الاطق مختلفة في قطاع غزةاسيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع.",
      'imagePath': 'images/hz3.jpg',
    }, {
      'title': "طوفان الاقصى",
      'description': "استشهد وأصيب عشرات الفلسطينيين في قطاع غزة...",
      'imagePath': 'images/hz.jpg',
    },
    {
      'title': "تركيا",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/hz2.jpg',
    },
    {
      'title': "السودان",
      'description': "استشهد وأصيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع غزة...",
      'imagePath': 'images/sss.webp',
    },
    {
      'title': "الانتخابات الامريكية",
      'description': "استشهد وأصيب عشرات غزةاستشهد وأصيب عشرات الاطق مختلفة في قطاع غزةاسيب عشرات الفلسطينيين في غارات إسرائيلية على مناطق مختلفة في قطاع.",
      'imagePath': 'images/hz3.jpg',
    },
    // أضف المزيد من الأخبار هنا
  ];

  List<Map<String, String>> filteredNewsItems = [];

  @override
  void initState() {
    super.initState();
    filteredNewsItems = newsItems; // في البداية، جميع العناصر معروضة
  }

  void searchNews(String query) {
    setState(() {

    });
    if (query.isEmpty) {
      filteredNewsItems = newsItems;
    } else {
      filteredNewsItems = newsItems
          .where((item) => item['title']!.contains(query))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  labelText: 'بحث',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onChanged: searchNews, // استدعاء دالة البحث عند تغيير النص
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(

                  children: [


                    if (filteredNewsItems.isEmpty)
                      Center(
                        child: Text(
                          'لا يوجد خبر بهذا البحث',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight
                              .bold),
                        ),
                      )
                    else
                      for (var item in filteredNewsItems) ...[
                       TopcsItem(
                          context,
                          title: item['title']!,
                          description: item['description']!,
                          imagePath: item['imagePath']!,
                        ),
                        SizedBox(height: 20),
                      ]


                  ],

                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 10, bottom: 10),
            //   child: SingleChildScrollView(
            //     physics: NeverScrollableScrollPhysics(),
            //
            //   ),
            // ),
            // التحقق من وجود عناصر في القائمة

          ],
        ),
      ),
    );
  }

  Widget TopcsItem(BuildContext context,
      {required String title, required String description, required String imagePath}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetilsPage(
                  title: title,
                  description: description,
                  imagePath: imagePath,
                ),
          ),
        );
      },
      child: Container(
        height: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 200,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title,
                    textDirection: TextDirection.rtl,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    textDirection: TextDirection.rtl,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

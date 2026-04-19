import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({super.key});

  final List<Map<String, dynamic>> profileItems = [
    {"title": "تعديل حسابي", "image": "assets/frame.png"},
    {"title": "دعوه صديق", "image": "assets/profile-2user.png"},
    {"title": "عن التطبيق والجوائز", "image": "assets/clipboard-tick.png"},
    {"title": "شروط الاستخدام", "image": "assets/task.png"},
    {"title": "حذف الحساب", "image": "assets/profile-delete.png"},
    {"title": "تسجيل خروج", "image": "assets/logout.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text("حسابي", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 15),
                  Center(
                    child: Stack(
                      children: [
                        Positioned(
                          // top: ,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[100],
                            ),
                            // color: Colors.grey[100],
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              "assets/image 57 (2).png",
                              width: 130,
                              height: 210,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 120,
                          child: Image.asset("assets/camera-01.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: profileItems.length,
                    itemBuilder: (context, index) {
                      var item = profileItems[index];
                      var image = item["image"];
                      var title = item["title"];
                      return InkWell(
                        onTap: () {},
                        highlightColor: Colors.deepOrangeAccent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Image.asset(image, width: 20, color: Colors.red),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "$title",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              // Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

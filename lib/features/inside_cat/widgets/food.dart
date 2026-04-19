import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talabat_like_app/features/home/view/widgets/my_location_widget.dart';
import 'dart:developer';
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
class Food extends StatefulWidget {
  Food({super.key});
  @override
  State<Food> createState() => _Food();
}

class _Food extends State<Food> {
  String type = "Restaurant";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              children: [
                MyLocationWidget(),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  color: Color(0xffFEEEEC),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Food",
                          style: TextStyle(
                            color: type == "Restaurant"
                                ? Colors.black
                                : Colors.red,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            type = "Food";
                          });
                        },
                      ),
                      GestureDetector(
                        child: Text(
                          "Restaurant",
                          style: TextStyle(
                            color: type == "Food" ? Colors.black : Colors.red,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            type = "Restaurant";
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                if (type == "Food")
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) => ListTile(
                      leading: Image.asset(""),
                      title: Text("بج برجر سبايسي"),
                      subtitle: Text(
                        "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                      ),
                      trailing: Text("150 L.E"),
                    ),
                  ),
                if (type == "Restaurant")
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

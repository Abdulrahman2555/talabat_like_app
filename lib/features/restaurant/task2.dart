import 'package:talabat_like_app/widgets/widgets/bottom2.dart';
import 'package:flutter/material.dart';
import 'package:talabat_like_app/widgets/widgets/first.dart';
import 'package:talabat_like_app/widgets/widgets/second.dart';
import 'package:talabat_like_app/widgets/widgets/third.dart';
import 'package:talabat_like_app/widgets/widgets/fourth.dart';
//import 'package:talabat_like_app/widgets/widgets/food_card.dart';

class HomeScreen2 extends StatelessWidget {
  HomeScreen2({super.key});
  List images = [
    "assets/chiken.png",
    "assets/makrona.png",
    "assets/eggs.png",
    "assets/rice.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // child: Padding(
          //   padding: const EdgeInsets.all(8.0),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              spacing: 0,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                // padding: const EdgeInsets.symmetric(horizontal: 6),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        right: 20,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset("assets/Left Actionable .png"),
                        ),
                      ),
                      Positioned(child: Image.asset("")),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Image.asset(
                            "assets/50%.png",
                            width: 550,
                            height: 193,
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),

                  // onTap: () => Navigator.of(context).pop(),
                ),
                SizedBox(height: 10),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Center(
                      child: Container(
                        width: 500,
                        height: 102,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1,
                              //offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // spacing: 10,
                            children: [
                              Image.asset(
                                'assets/delicios.png',
                                width: 85,
                                height: 130,
                              ),
                              SizedBox(width: 4),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Column(
                                  spacing: 2,
                                  //mainAxisAlignment: MainAxisAlignment.ce,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "اسم الطعم هنا ",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/burger.png",
                                          width: 14,
                                          height: 12.33,
                                        ),
                                        Text(
                                          "طعام بحري , مشويات , اكلات سريعة",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/Star.png",
                                          width: 12.26,
                                          height: 11.81,
                                        ),
                                        Text(
                                          "5.0(+100)",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/truck-fast.png",
                                          width: 14,
                                          height: 14,
                                        ),
                                        Text(
                                          "متاح التوصيل",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 164),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/heart.png"),
                                  Image.asset("assets/ShareNetwork (1).png"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 8,
                    children: [
                      Container(
                        width: 71,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xFFF55540), // نفس اللون في Figma
                            width: 1, // 1px
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/setting-5.png",
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Container(
                        width: 108,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xFFF55540), // نفس اللون في Figma
                            width: 1, // 1px
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              " the best 🔥",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF55540),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xFFE6E6E6), // نفس اللون في Figma
                            width: 1, // 1px
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 7,
                          ),
                          child: Center(
                            child: Text(
                              "بيتزا",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff727272),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 106,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xFFE6E6E6), // نفس اللون في Figma
                            width: 1, // 1px
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 4,
                          ),
                          child: Center(
                            child: Text(
                              "مشويات",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff727272),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 99,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xFFE6E6E6), // نفس اللون في Figma
                            width: 1, // 1px
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 6,
                          ),
                          child: Center(
                            child: Text(
                              "حلويات",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff727272),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "the best 🔥 ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // spacing: 10,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFEEEEC),
                            ),
                            width: 230,
                            height: 150,

                            child: Image.asset("assets/chiken.png"),
                          ),
                          SizedBox(height: 8),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 6),
                          // child:
                          Text(
                            "chicken",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 155),
                          // child:
                          Text(
                            "150 L.E",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              // color: Color.fromRGBO(254, 238, 236, 1),
                            ),
                            width: 230,
                            height: 150,

                            child: Image.asset(
                              "assets/makrona.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 6),
                          // child:
                          Text(
                            "makrona",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 155),
                          // child:
                          Text(
                            "180 L.E",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                //       "assets/chiken.png",
                //           // "assets/makrona.png",
                //           // "assets/eggs.png",
                //           // "assets/rice.png",
                //           // "معكرونه بالصوص و قطع بانية حار",
                //           //
                //"2.20 د.ك",
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              // color: Color.fromRGBO(254, 238, 236, 1),
                            ),
                            width: 230,
                            height: 150,

                            child: Image.asset(
                              "assets/rice.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 6),
                          // child:
                          Text(
                            "rice",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 155),
                          // child:
                          Text(
                            "160 L.E",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              // color: Color.fromRGBO(254, 238, 236, 1),
                            ),
                            width: 230,
                            height: 150,

                            child: Image.asset(
                              "assets/eggs.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 6),
                          // child:
                          Text(
                            "Eggs",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                          // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 155),
                          // child:
                          Text(
                            "120 L.E",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),

                Bottom2(),
              ],
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
 // _typefood(),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 8),
                //   child: GridView.builder(
                //     shrinkWrap: true,
                //     // physics: NeverScrollableScrollPhysics(),
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       // crossAxisSpacing: 0,
                //       // mainAxisSpacing: 5,
                //       // childAspectRatio: 0.7,
                //     ),
                //     itemCount: images.length,
                //     itemBuilder: (context, index) {
                //       var image = images[index];
                //       return Container(
                //         // color: Colors.redAccent,
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             // Text("lfml"),
                //             Container(
                //               // width: 130,
                //               // height: 20,
                //               // decoration: BoxDecoration(color: Color(0xffFEEEEC)),
                //               child: Image.asset(
                //                 "$image",
                //                 width: 170,
                //                 height: 110,
                //               ),
                //             ),
                //             Text(
                //               "معكرونه بالصوص و قطع بانية حار",
                //               style: TextStyle(
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.w400,
                //               ),
                //             ),
                //             SizedBox(height: 6),
                //             Text(

                //               style: TextStyle(
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.w400,
                //               ),
                //             ),
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),

// class _typefood extends StatelessWidget {
//   _typefood({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//        
//           Row(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Color(0xffFEEEEC),
//                     ),
//                     width: 50,
//                     height: 30,

//                     child: Image.asset("assets/chiken.png"),
//                   ),
//                   Text("معكرونه بالصوص و قطع بانية حار"),
//                   Text("2.20 د.ك"),
//                 ],
//               ),
//               Column(children: [Container(), Text(""), Text("")]),
//             ],
//           ),
//           Row(
//             children: [
//               Column(children: [Container(), Text(""), Text("")]),
//               Column(children: [Container(), Text(""), Text("")]),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

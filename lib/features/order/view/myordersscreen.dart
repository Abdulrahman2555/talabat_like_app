import 'package:talabat_like_app/widgets/widgets/toporder.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Toporder(),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 85,
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // لون الظل
                          blurRadius: 10, // نعومة الظل
                          spreadRadius: 2, // انتشاره
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset("assets/Rectangle 1975 (2).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "رقم الطلب :#4528",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Nov 2023 16:48:23",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffA5A5A5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 125),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 60,
                                  color: Color(0xffFFDDCD),
                                  child: Center(
                                    child: Text(
                                      "قيد التنفيذ",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffF55540),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                width: 100,
                                color: Color(0xffF55540),
                                child: Center(
                                  child: Text(
                                    "طلب مره اخري",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 15,
                  ),
                  child: Container(
                    height: 85,
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // لون الظل
                          blurRadius: 10, // نعومة الظل
                          spreadRadius: 2, // انتشاره
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset("assets/Rectangle 1975 (3).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "رقم الطلب :#4528",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Nov 2023 16:48:23",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffA5A5A5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 125),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 60,
                                  color: Color(0xffFFDDCD),
                                  child: Center(
                                    child: Text(
                                      "قيد التنفيذ",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffF55540),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                width: 100,
                                color: Color(0xffF55540),
                                child: Center(
                                  child: Text(
                                    "طلب مره اخري",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Container(
                // child: Row(
                //   children: [
                //     Image.asset("assets/Rectangle 1975 (3).png"),
                //     Column(
                //       children: [
                //         Text("data"),
                //         Text("data")
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Container(),
                //         Container()
                //       ],
                //     )
                //   ],
                // ),

                //),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

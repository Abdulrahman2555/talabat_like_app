import 'package:flutter/material.dart';
import 'package:talabat_like_app/features/tracking/widgets/tracking2.dart';
import 'package:talabat_like_app/widgets/widgets/topfav.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _payment();
}

class _payment extends State<Payment> {
  // Payment({super.key});
  String title = "الدفع";
  String typepay = "بطاقه ائتمان";
  List<Map<String, dynamic>> payment = [
    {"string": "ملخص الدفع"},
  ];
  List<Map<String, dynamic>> type = [
    {"image": "assets/credit-card 1.png", "title": "بطاقة ائتمان"},
    {"image": "assets/kent-4-logo-png-transparent 1.png", "title": "كينت"},
    {"image": "assets/cash-payment 1.png", "title": "نقداً"},
  ];
  List<Map<String, dynamic>> summarypay = [
    {"price": 150.00, "title": "المجموع الفرعي"},
    {"price": 15.00, "title": "التوصيل"},
    {"price": 165.00, "title": "المبلغ الاجمالي"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Topfav(title),

                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/Rectangle 17453.png",

                      fit: BoxFit.cover,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/Group 81676.png"),
                          SizedBox(width: 6),
                          Text(
                            "19 الشيخ احمد الصاوي..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        "تغير",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "تفاصيل العنوان من رقم المنزل والشارع الي نهايته",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  ),

                  Text(
                    "رقم الهاقف المتنقل : 01000000000",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  Divider(thickness: 0.8),
                  Text(
                    "ملخص الدفع",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: summarypay.length,
                    itemBuilder: (context, index) {
                      return Row(
                        spacing: 28,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(summarypay[index]["title"]),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text("${summarypay[index]["price"]} L.E "),
                          ),
                        ],
                      );
                    },
                  ),
                  Divider(thickness: 0.8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "الدفع من خلال",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text("يوفر المطعم ثلاث طرق للدفع مما يناسبك"),
                    ],
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: type.length,
                    itemBuilder: (context, index) {
                      return Row(
                        spacing: 3,
                        children: [
                          Radio(
                            // groupValue: ,
                            value: type[index]["title"],
                            groupValue: typepay,
                            onChanged: (val) {
                              setState(() {
                                typepay = val!;
                              });
                            },
                            activeColor: Color(0XFFF55540),
                            side: BorderSide(color: Colors.black, width: 1),
                          ),

                          Image.asset(type[index]["image"]),
                          Text(type[index]["title"]),
                        ],
                      );
                    },
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            insetPadding: EdgeInsets.symmetric(
                              horizontal: 30,
                              // vertical: 50,
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/check 2.png",
                                      // width: 50,
                                      // height: 45,
                                    ),
                                  ),
                                  Text(
                                    "لقد تم إنشاء الطلب بنجاح",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  // Text(
                                  //   "يمكنك الأن متابعة الطلب من خلال خانه طلباتي",
                                  //   style: TextStyle(
                                  //     fontSize: 10,
                                  //     fontWeight: FontWeight.w400,
                                  //   ),
                                  // ),
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderTrackingScreen(),
                                            ),
                                          );
                                        });
                                      },
                                      child: Container(
                                        width: 420,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "متابعه",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      child: Container(
                        width: 490,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "تاكيد الشراء",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
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

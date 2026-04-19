import 'package:flutter/material.dart';
import 'increasequantity.dart';
class Widget5 extends StatelessWidget {
  const Widget5({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      width: 350,
      height: 104,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Text("معكرونه بالصوص و قطع بانية حار",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
          Text("هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها" ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),maxLines: 2,),
          SizedBox(height: 4),
          Row(
            children: [
              Text("2.20 د.ك",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
              SizedBox(width: 170),
              Increasequantity(),
            ],
          )
      
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : [
       Container(
        width: 170,
        height: 109.5,
        decoration: BoxDecoration(),
         child: Image.asset(
          "assets/makrona.png",
          //  width:  ,
          //  height:  , 
         ),
       ),
       Text("معكرونه بالصوص و قطع بانية حار",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400) ),
       SizedBox(height: 6),
       Text("2.20 د.ك",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),)

      ]
    );
  }
}
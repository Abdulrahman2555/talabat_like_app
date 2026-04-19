import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
       return Column(
        crossAxisAlignment:CrossAxisAlignment.start,
      children : [
       Container(
        
        decoration: BoxDecoration(
          color :Colors.brown
        ),
         child: Image.asset(
          "assets/rice.png",
          width: 300,
          height: 109.5, 
         ),
       ),
       Text("معكرونه بالصوص و قطع بانية حار",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400) ),
       SizedBox(height: 6),
       Text("2.20 د.ك",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),)

      ]
    );
  }
}
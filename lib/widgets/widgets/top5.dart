import 'package:flutter/material.dart';

class Top5 extends StatelessWidget {
  const Top5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 46,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset("assets/notification.png",width: 24,height: 24,),
          ),
          Text("عربه التسوق",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/Left Actionable .png",width: 24,height: 24,),
          ), 
        ],
       
      
         
      ),
    );
    
  }
}
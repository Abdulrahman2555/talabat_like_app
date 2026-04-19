import 'package:flutter/material.dart';

class Additions3 extends StatelessWidget {
  const Additions3({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          spacing: 8,
          children: [
              
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("الاضافات",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  Container(
                    width :58 ,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Color(0xffFFE9D9),
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(child: Text("اختياري",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: Color(0xffF55540)),))
                  )
                ],
              ),
              Row(
                children: [
                Checkbox(
                 value: false,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

            onChanged: (value) {
              
            },
            side: BorderSide(color: Color(0XFFD9D9D9), width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            activeColor: Color(0XFFF55540),
            checkColor: Colors.white,
          ),
          Text( "سلطه"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Text(
            "د.ك0.50"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
                ],      
              ),
              Row(
               children: [
                Checkbox(
                 value: false,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

            onChanged: (value) {
              
            },
            side: BorderSide(color: Color(0XFFD9D9D9), width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            activeColor: Color(0XFFF55540),
            checkColor: Colors.white,
          ),
          Text( "حار"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Text(
            "د.ك0.50"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
                ], 
              ),
              Row(
                children: [
                Checkbox(
                 value: false,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

            onChanged: (value) {
              
            },
            side: BorderSide(color: Color(0XFFD9D9D9), width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            activeColor: Color(0XFFF55540),
            checkColor: Colors.white,
          ),
          Text( "عادي"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Text(
            "د.ك0.50"
            ,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
                ],
              )
          ]
           
      )
    );
  }
}
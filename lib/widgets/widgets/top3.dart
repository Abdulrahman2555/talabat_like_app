import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Top3 extends StatelessWidget {
  const Top3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
          width: 390.w,
          height: 200.h,
          color: Color(0xffFEEEEC),
        ),
        Positioned(
          bottom: 2,
          top: 0,
          child: Image.asset("assets/chicken.png",width:360.w ,height: 300)),

        Positioned( 
          top:30 ,
          left:30 ,
          child: Image.asset("assets/notification.png",width: 24.w,height: 24.w)
          ),
          Positioned( 
          top:30 ,
          right:30 ,
          child: Image.asset("assets/Left Actionable .png",width: 24.w,height: 24.w)
          )


      ],
    );
  }
}
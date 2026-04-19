import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom2 extends StatelessWidget {
  const Bottom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 450.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: Color(0xffF55540),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Container(
                  width: 20,
                  height: 20,
                  color: Color.fromARGB(255, 220, 220, 220),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(
                      child: Text("1", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),

                SizedBox(width: 15),
                Text(
                  "اضافه الي السلة",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(width: 270),
                Text(
                  "150 ج.م",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:talabat_like_app/features/product_details/controler/product_cubit.dart';

class UpperSection extends StatelessWidget {
  final String image;
  final BoxFit fit;
  final Color color;
  const UpperSection({
    super.key,
    required this.image,
    required this.fit,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 210.h,
          decoration: BoxDecoration(color: color),
          child: Image.asset(image, fit: BoxFit.contain),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5,
            children: [
              Image.asset("assets/notification.png", width: 40.w, height: 40.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Future.delayed(const Duration(milliseconds: 100), () {
                    context.read<ProductCubit>().reset();
                  });
                },
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFF55540),
                  ),

                  child: Image.asset(
                    "assets/back_arrow.png",
                    width: 15.w,
                    height: 23.h,
                  ),
                  // onPressed: () => navigator,

                  // ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

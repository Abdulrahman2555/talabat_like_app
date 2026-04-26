import 'package:flutter/material.dart' hide BottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:talabat_like_app/features/product_details/controler/product_state.dart';
// import 'package:talabat_like_app/features/product_details/view/widgets/type_title.dart'
// show TypeTitle;

import '../controler/product_cubit.dart' show ProductCubit;
// import 'widgets/addition_option.dart' show AdditionOption;
// import 'widgets/addition_title.dart' show AdditionsTitle;
// import 'widgets/bottom_sheet.dart' show BottomSheet;
// import 'widgets/price_and_quantity_section.dart' show PriceAndQuantitySection;
// import 'widgets/size_option.dart' show SizeOption;
// import 'widgets/size_title.dart' show SizeTitle;
// import 'widgets/upper_section.dart' show UpperSection;

class ProductDetails extends StatelessWidget {
  final String image;
  final String title;
  final BoxFit fit;
  final Color color;
  const ProductDetails({
    super.key,
    required this.image,
    required this.title,
    required this.fit,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpperSection(image: image, fit: fit, color: color),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.cairo(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "There is a long-established fact that the readable content of a page will distract the reader from focusing on the external appearance of the text or the layout of the paragraphs on the page they are reading.",
                      style: GoogleFonts.cairo(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 68, 49, 49),
                      ),
                    ),
                    // Price and context.read<ProductCubit>().quantity
                    PriceAndQuantitySection(),

                    Divider(
                      height: 5.h,
                      thickness: 5,
                      color: Color(0XFFD9D9D9).withAlpha(50),
                    ),
                    SizeTitle(),
                    BlocBuilder<ProductCubit, ProductState>(
                      buildWhen: (prev, curr) => curr is SizeChanged,
                      builder: (context, state) {
                        return Column(
                          children: [
                            ...List.generate(
                              context.read<ProductCubit>().sizes.length,
                              (index) => SizeOption(
                                price: context
                                    .read<ProductCubit>()
                                    .sizes[index]['price'],
                                title: context
                                    .read<ProductCubit>()
                                    .sizes[index]['title'],
                                value: index,
                                groupValue: context
                                    .read<ProductCubit>()
                                    .selectedSizeIndex,
                                onChanged: (value) {
                                  context.read<ProductCubit>().changeSize(
                                    index,
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Divider(
                      height: 5.h,
                      thickness: 5,
                      color: Color(0XFFD9D9D9).withAlpha(50),
                    ),
                    AdditionsTitle(),
                    Column(
                      children: List.generate(
                        context.read<ProductCubit>().additions.length,
                        (index) => AdditionOption(index: index),
                      ),
                    ),

                    // TypeTitle(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomSheet(),
    );
    // );
  }
}

// *********upper section********//
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

class SizeTitle extends StatelessWidget {
  const SizeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "size",
          style: GoogleFonts.cairo(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Container(
          // height: 26,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0XFFFFE9D9),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            "Required",
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: Color(0XFFF55540),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
// import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class SizeOption extends StatelessWidget {
  final String title;
  final double price;
  final int value;
  final int groupValue;

  final void Function(int)? onChanged;
  const SizeOption({
    super.key,
    required this.title,
    required this.price,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged!(value),
      child: Row(
        children: [
          Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: (i) {
              onChanged!(value);
            },
            groupValue: groupValue,
            // backgroundColor: WidgetStatePropertyAll(Colors.white),
            activeColor: Color(0XFFF55540),
            side: BorderSide(color: Colors.black, width: 1.w),
          ),
          Text(
            title,
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Spacer(),

          Text(
            "$price L.E",
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class PriceAndQuantitySection extends StatelessWidget {
  const PriceAndQuantitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${(context.watch<ProductCubit>().price).toStringAsFixed(2)} L.E",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        ),
        Container(
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0.0, 2), //(x,y)
                blurRadius: 9,
                spreadRadius: 0,
              ),
            ],
            color: Colors.white,
          ),
          child: Row(
            spacing: 16,
            children: [
              InkWell(
                onTap: () {
                  context.read<ProductCubit>().removeItem();
                },
                child: Icon(
                  Icons.remove,
                  size: 18.sp,
                  color: //context.watch<ProductCubit>().quantity != 1
                  Color(
                    0XFFF55540,
                  ),
                  // : Color(0XFFD2B080),
                ),
              ),
              Text(
                context.read<ProductCubit>().quantity.toString(),
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<ProductCubit>().addItem();
                },
                child: Icon(Icons.add, size: 18.sp, color: Color(0XFFF55540)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 105.5.h,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0.0, -4), //(x,y)
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 48,

            decoration: BoxDecoration(
              color: Color(0XFFF55540),
              // color: Color(0XFFF55540),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Directionality(
                  //   textDirection: TextDirection.rtl,
                  //   child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 10.sp,
                    children: [
                      Container(
                        width: 29.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(2.5.r),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 233, 217, 0.3),
                          // color: Color(0XFFFFE9D9),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            context.watch<ProductCubit>().quantity.toString(),
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,

                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Added To Basket",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  // ),
                  SizedBox(width: 250),

                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child:
                  Directionality(
                    textDirection: TextDirection.ltr,

                    child: Text(
                      "${context.watch<ProductCubit>().total} L.E",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdditionsTitle extends StatelessWidget {
  const AdditionsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "addition",
          style: GoogleFonts.cairo(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Container(
          // height: 26,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0XFFFFE9D9),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            "Optional",
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: Color(0XFFF55540),
            ),
          ),
        ),
      ],
    );
  }
}

class AdditionOption extends StatelessWidget {
  final int index;
  const AdditionOption({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (prev, curr) => curr is AdditionChanged,
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(8.r),
          onTap: () => context.read<ProductCubit>().changeAddition(
            index,
            !context.read<ProductCubit>().additions[index]['isChecked']!,
          ),
          child: Row(
            children: [
              Checkbox(
                value: context
                    .read<ProductCubit>()
                    .additions[index]['isChecked']!,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {
                  context.read<ProductCubit>().changeAddition(index, value!);
                },
                side: BorderSide(color: Colors.black, width: 1.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                activeColor: Colors.black,
                checkColor: Colors.red,
              ),
              Text(
                context.read<ProductCubit>().additions[index]['title'],
                style: GoogleFonts.cairo(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(
                "${context.read<ProductCubit>().additions[index]['price']} L.E",
                style: GoogleFonts.cairo(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

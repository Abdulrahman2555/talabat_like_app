import 'package:flutter/material.dart' hide BottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:talabat_like_app/features/product_details/view/widgets/type_title.dart'
    show TypeTitle;

import '../controler/product_cubit.dart' show ProductCubit;
import 'widgets/addition_option.dart' show AdditionOption;
import 'widgets/addition_title.dart' show AdditionsTitle;
import 'widgets/bottom_sheet.dart' show BottomSheet;
import 'widgets/price_and_quantity_section.dart' show PriceAndQuantitySection;
import 'widgets/size_option.dart' show SizeOption;
import 'widgets/size_title.dart' show SizeTitle;
import 'widgets/upper_section.dart' show UpperSection;

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
                        color: Colors.black,
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
                    Column(
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
                            value:
                                context
                                        .read<ProductCubit>()
                                        .selectedSizeIndex ==
                                    index
                                ? 0
                                : 1,
                            onChanged: (value) {
                              context.read<ProductCubit>().changeSize(index);
                            },
                          ),
                        ),
                      ],
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

                    TypeTitle(),
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

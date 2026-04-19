import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:talabat_like_app/features/product_details/controler/product_cubit.dart'
    show ProductCubit;

class AdditionOption extends StatelessWidget {
  final Function(int)? onChanged;
  final int index;
  const AdditionOption({super.key, required this.index, this.onChanged});
  // bool ischecked =false ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.r),
      onTap: () => context.read<ProductCubit>().changeAddition(
        index,
        !context.read<ProductCubit>().additions[index]['isChecked']!,
      ),
      child: Row(
        children: [
          Checkbox(
            // value: ischecked,
            value: context.read<ProductCubit>().additions[index]['isChecked']!,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

            onChanged: (value) {
              // context.read<ProductCubit>().changeAddition(index, value!)
              // ischecked ?
              // ischecked ? context.read<ProductCubit>().addAddition(.additions[index]['price']) : context.read<ProductCubit>().removeAddition(.additions[index]['price'])
              //
              context.read<ProductCubit>().changeAddition(index, value!);
            },
            side: BorderSide(color: Color(0XFFD9D9D9), width: 1.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            activeColor: Color(0XFFF55540),
            checkColor: Colors.white,
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
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
// BlocBuilder<MyCubit, MyState>(
//   builder: (context, state) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: options.length,
//       itemBuilder: (context, index) {
//         return CheckboxListTile(
//           title: Text(options[index]),
//           value: state.checkedList[index],
//           onChanged: (value) {
//             context.read<MyCubit>().toggleCheckbox(index);
//           },
//         );
//       },
//     );
//   },
// )
import 'package:talabat_like_app/features/fav/controller/fav_cubit2.dart';
import 'package:talabat_like_app/features/home/controller/fav_cubit.dart';
import 'package:talabat_like_app/features/home/view/homescreen.dart';
import 'package:talabat_like_app/features/inside_cat/widgets/food.dart';
import 'package:talabat_like_app/features/logo/controller/logo_cubit.dart';
import 'package:talabat_like_app/features/logo/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show MultiBlocProvider, BlocProvider;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talabat_like_app/features/order/view/myordersscreen.dart';
// Import the generated file
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:talabat_like_app/features/product_details/controler/product_cubit.dart';
import 'package:talabat_like_app/widgets/route_screen.dart';
import 'package:talabat_like_app/widgets/widgets/task6.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MultiBlocProvider(
      providers: [
        // BlocProvider<CartCubit>(create: (_) => CartCubit()),
        // BlocProvider<CartBlocController>(create: (_) => CartBlocController()),
        BlocProvider<ProductCubit>(create: (_) => ProductCubit()),
        BlocProvider<favproductsCubit>(create: (context) => favproductsCubit()),
        BlocProvider<logocubit>(create: (context) => logocubit()..startlogo()),
      ],

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      builder: (context, child) => MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Color(0XFFF55540)),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.notoKufiArabicTextTheme(),
        ),
        home: child,
      ),

      child: HomePage(),
    );
  }
}

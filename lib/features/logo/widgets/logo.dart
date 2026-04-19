import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:talabat_like_app/features/logo/controller/logo_cubit.dart';
import 'package:talabat_like_app/widgets/route_screen.dart';

class Logo2 extends StatefulWidget {
  const Logo2({super.key});

  @override
  State<Logo2> createState() => _Logo2State();
}

class _Logo2State extends State<Logo2> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<logocubit, Logostate>(
      builder: (context, state) {
        if (state is logoloaded) {
          return Scaffold(
            backgroundColor: Color(0xffFFECDC),
            body: SafeArea(
              child: Center(child: Image.asset("assets/Layer_1.png")),
            ),
          );
        } else {
          return HomePage();
        }

        // default state
        // return Scaffold(backgroundColor: Colors.white);
      },
    );
  }
}

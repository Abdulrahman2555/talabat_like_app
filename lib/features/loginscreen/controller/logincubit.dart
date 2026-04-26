// import 'package:talabat_like_app/features/product_details/controler/product_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_like_app/features/loginscreen/controller/loginstate.dart';

// import 'package:talabat_like_app/features/loginscreen/controllers/loginstate.dart';
class Logincubit extends Cubit<Loginstate> {
  Logincubit() : super(logininitial());
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void register() async {
    emit(loginloading());
  }
}

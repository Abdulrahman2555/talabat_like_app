// import 'package:talabat_like_app/features/product_details/controler/product_cubit.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_like_app/features/registerscreen/controllers/registerstate.dart';
// import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Registercubit extends Cubit<Registerstate> {
  Registercubit() : super(registerinitial());
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool ispasswordvisible = false;
  bool isconfirmpasswordvissible = false;
  void changepasswordvisible() {
    ispasswordvisible = !ispasswordvisible;
    emit(registerinitial());
  }

  void changeconfirmpasswordvisible() {
    isconfirmpasswordvissible = !isconfirmpasswordvissible;
    emit(registerinitial());
  }

  void register() async {
    emit(registerloading());
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailcontroller.text,
            password: passwordcontroller.text,
          );
      // log(credential.user.email?? " ");
      // log(credential.user?.uid ?? '');
      emit(registersuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      emit(registererror(e.toString()));
    } catch (e) {
      print(e);
    }
  }
}

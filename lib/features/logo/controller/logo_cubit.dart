import 'dart:developer';
import "package:flutter_bloc/flutter_bloc.dart";

abstract class Logostate {}

class logoinitial extends Logostate {}

class logoloading extends Logostate {}

class logoloaded extends Logostate {
  final String image;
  logoloaded(this.image);
}

class startapp extends Logostate {}

class logocubit extends Cubit<Logostate> {
  logocubit() : super(logoinitial());
  void startlogo() async {
    // emit(logoloading());
    // await Future.delayed(Duration(seconds: 1));
    emit(logoloaded("assets/Layer_1.png"));
    await Future.delayed(Duration(seconds: 10));
    emit(startapp());
  }
}

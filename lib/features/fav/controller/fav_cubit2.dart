import 'dart:developer';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:talabat_like_app/features/fav/model/favproduct_model.dart';
import 'package:talabat_like_app/widgets/api_product/model/productmodel.dart';
// import 'package:talabat_like_app/features/home/view/homescreen.dart' show favouriteproducts;
// import 'package:talabat_like_app/features/home/controller/favproductsproducts_state.dart';

abstract class favproductsState {}

class favproductsinitial extends favproductsState {}

class favproductsloading extends favproductsState {}

class favproductsloaded extends favproductsState {}

class favproductsempty extends favproductsState {}

class favproductadded extends favproductsState {}

class favproductdeleted extends favproductsState {}

class favproductserror extends favproductsState {
  final String message;
  favproductserror(this.message);
}

List<Map<String, dynamic>> favouriteproducts = [
  {"image": 'assets/burger.png', "title": 'Burger'},
  {"image": 'assets/chicken.png', "title": 'Chicken'},
  {"image": 'assets/sea-food.png', "title": 'Sea Food'},
  {"image": 'assets/meat.png', "title": 'Meat'},
];

class favproductsCubit extends Cubit<favproductsState> {
  favproductsCubit() : super(favproductsinitial()) {
    loadproducts(); // ✅ open DB and load on creation
  }
  late Database database;
  List<Map<String, dynamic>> favourites = [];
  void loadproducts() async {
    emit(favproductsloading());
    try {
      await openDb();
      favourites = await database.rawQuery('SELECT * FROM Products');
      print("✅ LOADED: ${favourites.length} items");
      print("✅ DATA: $favourites");
      emit(favproductsloaded());
    } catch (e) {
      print("❌ ERROR: $e");
      emit(favproductserror(e.toString()));
    }
  }

  openDb() async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath/demo.db';
    log(path);
    database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE Products (id INTEGER PRIMARY KEY, name TEXT, image TEXT )',
        );
      },
    );
  }

  Future<void> insertProduct(int id, String title, String image) async {
    await database.insert('Products', {
      'id': id,
      'name': title,
      'image': image,
    });

    emit(favproductadded());
    loadproducts();
  }
  // Future<void> insertProduct(int id ,string name) async {
  //   final batch = database.batch();

  //   batch.insert('Products', {
  //     'id': index,
  //     'name': favouriteproducts[index]["title"],
  //     'image': favouriteproducts[index]["image"],
  //   });

  //   await batch.commit();
  //   emit(favproductadded());
  //   loadproducts();
  // }

  Future<void> deleteProduct(int id) async {
    await database.delete('Products', where: 'id = ?', whereArgs: [id]);
    emit(favproductdeleted());
    loadproducts();
  }

  Future<bool> isFavourite(int id) async {
    final result = await database.rawQuery(
      'SELECT * FROM Products WHERE id = ?',
      [id],
    );

    return result.isNotEmpty;
  }
}

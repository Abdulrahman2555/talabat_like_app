// import 'dart:developer';
// import 'package:talabat_like_app/features/home/controller/fav_state.dart';
// // import 'package:talabat_like_app/features/product_details/view/product_details.dart';
// // import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sqflite/sqflite.dart';
// // import 'package:talabat_like_app/features/product_details/view/product_details.dart';
// //  import 'product_model.dart'; // نموذج المنتج

// class FavCubit extends Cubit<FavState> {
//   FavCubit() : super(FavInitial());

//   List<Map<String, dynamic>> favList = [];
//   late Database database;

//   void loadFavorites() async {
//     emit(FavLoading());
//     try {
//       await openDb();
//       final response = await database.rawQuery('SELECT * FROM Favorites');
//       favList = response;
//       emit(FavLoaded());
//     } catch (e) {
//       emit(FavError("Error loading favorites: $e"));
//     }
//   }

//   Future<void> openDb() async {
//     try {
//       var databasesPath = await getDatabasesPath();
//       String path = '$databasesPath/demo.db';

//       database = await openDatabase(
//         path,
//         version: 1,
//         onCreate: (Database db, int version) async {
//           await db.execute('''
//             CREATE TABLE Favorites (
//               id INTEGER PRIMARY KEY AUTOINCREMENT, 
//               name TEXT NOT NULL, 
//               image TEXT
//             )
//           ''');
//         },
//       );
//     } catch (e) {
//       emit(FavError("Error opening database: $e"));
//     }
//   }

//   Future<void> insertFavorite(String title, String image) async {
//     try {
//       await database.insert('Favorites', {
//         "name": title,
//         "image": image,
//       }, conflictAlgorithm: ConflictAlgorithm.replace);
//       loadFavorites(); // تحديث القائمة فوراً
//     } catch (e) {
//       emit(FavError("Error inserting favorite: $e"));
//     }
//   }

//   Future<void> deleteFavoriteById(int id) async {
//     try {
//       await database.delete('Favorites', where: 'id = ?', whereArgs: [id]);
//       loadFavorites();
//     } catch (e) {
//       emit(FavError("Error deleting favorite: $e"));
//     }
//   }

//   // Delete by name if you want to keep old logic
//   Future<void> deleteFavoriteByName(String name) async {
//     try {
//       await database.delete('Favorites', where: 'name = ?', whereArgs: [name]);
//       loadFavorites();
//     } catch (e) {
//       emit(FavError("Error deleting favorite by name: $e"));
//     }
//   }
// }

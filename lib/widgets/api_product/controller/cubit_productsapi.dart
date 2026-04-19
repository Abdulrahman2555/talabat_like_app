import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:talabat_like_app/widgets/api_product/controller/state_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_like_app/widgets/api_product/model/productmodel.dart';

class apiproductcontroller extends Cubit<apiproductstate> {
  apiproductcontroller() : super(apiinitial());

  void fetchPosts() async {
    var headers = {'Accept': 'application/json'};
    var dio = Dio();
    var response = await dio.get(
      'https://dummyjson.com/products',
      options: Options(headers: headers),
    );
    log(response.statusCode.toString());
    log(response.data.toString());
    // create a map of the data and convert it to a list of posts
    productsmodel products = productsmodel.fromJson(response.data);

    if (response.statusCode == 200) {
      emit(apiloaded(products));
    } else {
      emit(apierror('Failed to load posts'));
    }
  }
}

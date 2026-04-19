import 'package:flutter/material.dart';

class ProductDetailsModel {
  List<ProductDetails>? products;

  ProductDetailsModel({this.products});

  ProductDetailsModel.fromJson(List<dynamic> json) {
    products = <ProductDetails>[];
    for (var v in json) {
      products!.add(ProductDetails.fromJson(v));
    }
  }

  List<dynamic> toJson() {
    return products!.map((v) => v.toJson()).toList();
  }
}
class ProductDetails {
  String? image;
  String? title;
  Color? color;

  ProductDetails({this.image, this.title, this.color});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    color = _hexToColor(json['color']);
  }

  Map<String, dynamic> toJson() {
    return {
      "image": image,
      "title": title,
      "color": _colorToHex(color),
    };
  }

  // تحويل من Hex إلى Color
  Color _hexToColor(String hex) {
    hex = hex.replaceAll("#", "");
    return Color(int.parse("0xff$hex"));
  }

  // تحويل من Color إلى Hex
  String _colorToHex(Color? color) {
    if (color == null) return "#000000";
    return "#${color.value.toRadixString(16).substring(2).toUpperCase()}";
  }
}
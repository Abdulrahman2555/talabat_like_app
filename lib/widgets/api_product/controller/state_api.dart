import 'package:talabat_like_app/widgets/api_product/model/productmodel.dart';

abstract class apiproductstate {}

class apiinitial extends apiproductstate {}

class apiloading extends apiproductstate {}

class apiloaded extends apiproductstate {
  final productsmodel products;
  apiloaded(this.products);
}

class apierror extends apiproductstate {
  final String message;
  apierror(this.message);
}

import 'package:talabat_like_app/widgets/api_product/controller/cubit_productsapi.dart';
import 'package:talabat_like_app/widgets/api_product/controller/state_api.dart';
import 'package:talabat_like_app/widgets/api_product/model/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class Productsui extends StatelessWidget {
  const Productsui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("products screen"), centerTitle: true),
      body: SingleChildScrollView(
        child: BlocBuilder<apiproductcontroller, apiproductstate>(
          builder: (context, state) {
            return (state is apiloading)
                ? LottieBuilder.asset('assets/loading.json')
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        if (state is apiloaded)
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.products.products?.length ?? 0,
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 10),
                            itemBuilder: (context, index) {
                              return ListTile(
                                trailing: Text(
                                  (state.products.products?[index].price ?? 0.0)
                                      .toString(),
                                ),

                                title: Text(
                                  state.products.products?[index].title ??
                                      'No title',
                                ),
                                subtitle: Text(
                                  state.products.products?[index].description ??
                                      'No description',
                                ),
                                leading: Container(
                                  color: Colors.red[200],
                                  width: 50,
                                  height: 150,
                                  child: Image.network(
                                    state.products.products?[index].thumbnail ??
                                        '',
                                    width: 20,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}

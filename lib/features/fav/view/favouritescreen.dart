import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_like_app/features/home/controller/fav_cubit.dart';
import 'package:talabat_like_app/features/home/controller/fav_state.dart';
import 'package:lottie/lottie.dart';
import 'package:talabat_like_app/features/fav/controller/fav_cubit2.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  @override
  void initState() {
    super.initState();
    context.read<favproductsCubit>().loadproducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<favproductsCubit, favproductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final favcubit = context.watch<favproductsCubit>();
        print("🔵 STATE: $state");
        print("🔵 FAVOURITES: ${favcubit.favourites}");
        if (state is favproductsloading || state is favproductsinitial) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
              child: favcubit.favourites.isEmpty
                  ? Center(child: Text("No favourites yet"))
                  : ListView.builder(
                      itemCount: favcubit.favourites.length,
                      itemBuilder: (context, index) {
                        final product = favcubit.favourites[index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                  0.1,
                                ), // لون الظل
                                blurRadius: 10, // نعومة الظل
                                spreadRadius: 2, // انتشاره
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(product["image"]),
                              SizedBox(width: 10),
                              Text(product["name"]),
                              Spacer(),
                              IconButton(
                                onPressed: () =>
                                    favcubit.deleteProduct(product["id"]),
                                icon: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ),
        );
      },
    );
  }
}

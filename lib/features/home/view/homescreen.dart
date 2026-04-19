import 'package:talabat_like_app/features/fav/controller/fav_cubit2.dart';
// import 'package:talabat_like_app/features/home/view/widgets/products.dart';
import 'package:talabat_like_app/features/product_details/view/product_details.dart';
// import 'package:talabat_like_app/features/profile_screen/view/profilescreen.dart';
import 'package:talabat_like_app/features/restaurant/task2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
// import 'package:talabat_like_app/view/task4.dart';
import 'dart:developer' show log;
import 'package:talabat_like_app/features/home/view/widgets/my_location_widget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isVisible = true;
  List<Map<String, dynamic>> productdetails = [
    {
      "image": 'assets/burger.png',
      "title": 'Burger',
      "color": Color(0xffF55540),
    },
    {
      "image": 'assets/chicken.png',
      "title": 'Chicken',
      "color": Color(0xffFCCAC4),
    },
    {
      "image": 'assets/sea-food.png',
      "title": 'Sea Food',
      "color": Color(0xff00A991),
    },
    {"image": 'assets/meat.png', "title": 'Meat', "color": Color(0xffB0E4DD)},
  ];
  List<Map<String, dynamic>> favouriteproducts = [
    {"image": 'assets/burger.png', "title": 'Burger'},
    {"image": 'assets/chicken.png', "title": 'Chicken'},
    {"image": 'assets/sea-food.png', "title": 'Sea Food'},
    {"image": 'assets/meat.png', "title": 'Meat'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            // child: Directionality(
            //   textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 16,
              children: [
                MyLocationWidget(),
                StatefulBuilder(
                  builder: (context, setState) {
                    return Form(
                      key: formKey,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: TextFormField(
                          controller: searchController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please search for your favorite food';
                            }
                            if (value.length < 3) {
                              return 'Search must be at least 3 characters';
                            }
                            return null;
                          },
                          obscureText: isVisible,
                          onChanged: (value) {
                            log(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Color(0xffFDF8F8),
                            filled: true,
                            focusColor: Color(0xffF55540),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(color: Color(0xffF55540)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),

                              borderSide: BorderSide(color: Color(0xffF55540)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(color: Color(0xffF55540)),
                            ),

                            hintText: 'Search for your favorite food',
                            hintStyle: TextStyle(
                              color: Color(0xffFCCAC4),
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(
                                isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xffF55540),
                              ),
                            ),
                            //  labelText: 'Search',
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 60,
                              maxHeight: 60,
                              maxWidth: 60,
                              minHeight: 60,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Image.asset('assets/search.png'),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                /*
                   Image.asset('assets/search.png', width: 28, height: 28),
                        Text(
                          'What are you looking for ?',
                          style: TextStyle(
                            color: Color(0xffFCCAC4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                   */
                // var item =productdetails[index]
                GridView.count(
                  crossAxisCount: 4, // 4 عناصر في الصف
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // عشان ما يعملش scroll لو جوا ListView
                  children: List.generate(4, (index) {
                    var item = productdetails[index];
                    var image = item["image"];
                    var title = item["title"];
                    var color = item["color"];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                  image: "$image",
                                  title:
                                      "Macaroni with sauce and spicy pane (chicken) pieces 🍝🔥",
                                  fit: BoxFit.cover,
                                  color: color,
                                ),
                              ),
                            );
                          },
                          child: Expanded(
                            child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 0),
                              child: Image.asset("$image", fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        // SizedBox(height: 8),
                        Expanded(
                          child: Text("$title", style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    );
                  }),
                ),
                // SizedBox(height: 0,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen2()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset('assets/banner.png'),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Text(
                    'Trending 🔥🔥',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 50,
                  ),
                  itemCount: favouriteproducts.length,
                  itemBuilder: (context, index) => Product(
                    id: index,
                    title: favouriteproducts[index]["title"],
                    image: favouriteproducts[index]["image"],
                  ),
                ),
              ],
            ),
            // ),
          ),
        ),
      ),
    );
  }
}

class Product extends StatefulWidget {
  const Product({required this.id, required this.title, required this.image});
  final int id;
  final String title;
  final String image;

  @override
  State<Product> createState() => _Product();
}

class _Product extends State<Product> {
  // int id

  // bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Container(
          width: 270,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xffFEEEEC),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Image.asset(widget.image, fit: BoxFit.contain),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                spacing: 0,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Column(
                      spacing: 32,
                      children: [
                        BlocConsumer<favproductsCubit, favproductsState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            return FutureBuilder(
                              future: context
                                  .read<favproductsCubit>()
                                  .isFavourite(widget.id),
                              builder: (context, snapshot) {
                                final isFav = snapshot.data ?? false;

                                return ElevatedButton(
                                  onPressed: () {
                                    if (isFav) {
                                      context
                                          .read<favproductsCubit>()
                                          .deleteProduct(widget.id);
                                    } else {
                                      context
                                          .read<favproductsCubit>()
                                          .insertProduct(
                                            widget.id,
                                            widget.title,
                                            widget.image,
                                          );
                                    }
                                  },
                                  child: Icon(
                                    isFav
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Color(0xffF55540),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color(0xffF55540),
                            ),

                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),

                            padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                            minimumSize: WidgetStatePropertyAll(Size(0, 0)),
                          ),
                          onPressed: () {},
                          icon: Image.asset('assets/cart.png', height: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 34),
                  Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(width: 80),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset(
                            'assets/burger-icon.png',
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            'Fast Food',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868686),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset('assets/star.png', width: 20, height: 20),
                          Text('5.0 (+500)', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Text(
                        '150 L.E',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff868686),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

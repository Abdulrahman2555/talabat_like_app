import 'package:talabat_like_app/features/fav/view/favouritescreen.dart';
import 'package:flutter/material.dart';
import 'package:talabat_like_app/features/home/view/homescreen.dart';
import 'package:talabat_like_app/features/order/view/myordersscreen.dart';
import 'package:talabat_like_app/features/product_details/view/product_details.dart';
// import 'package:talabat_like_app/features/favourite_screen/view/favouritescreen.dart';
// import 'package:talabat_like_app/features/product_details/view/product_details.dart';
import 'package:talabat_like_app/features/profile/view/profilescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> _tabImages = [
    'assets/home.png',
    'assets/heart.png',
    'assets/Chats.png',
    'assets/Chats1.png',
  ];

  // ✅ Remove _pages field from here

  @override
  Widget build(BuildContext context) {
    // ✅ Move it here so context is available
    final List<Widget> pages = [
      Homescreen(),
      Favouritescreen(),
      OrderScreen(),
      Profilescreen(),
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: pages,
        ), // ✅ use pages
        floatingActionButton: CustomFAB(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Colors.white,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTab(0),
                _buildTab(1),
                const SizedBox(width: 60),
                _buildTab(2),
                _buildTab(3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab(int index) {
    final isSelected = _selectedIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      borderRadius: BorderRadius.circular(50),

      // behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              _tabImages[index],
              width: 24,
              height: 24,
              // colorBlendMode:
              // isSelected ? Color:Colors.red : colorBlendMode:BlendMode.srcIn,
              // isSelected
              // ? Colors.
              // :
              color: isSelected ? Colors.red : null,
              colorBlendMode: BlendMode.srcIn,

              // colorBlendMode: BlendMode.srcIn,
            ),
            if (isSelected) const SizedBox(height: 5),
            if (isSelected)
              Container(
                width: 12,
                height: 2,
                decoration: BoxDecoration(
                  color: const Color(0xFFE94560),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF8964),
                      blurRadius: 16,
                      spreadRadius: 2,
                      offset: Offset(0, -12),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color(0xFFF55540),
      shape: const CircleBorder(),
      elevation: 8,
      child: Image.asset(
        "assets/shopping-cart.png",
        width: 24,
        height: 24,
        colorBlendMode: BlendMode.srcIn,
      ),
    );
  }
}

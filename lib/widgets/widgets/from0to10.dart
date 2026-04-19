import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui'; // للـFontFeature

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _counterAnimation;

  @override
  void initState() {
    super.initState();

    // 1️⃣ AnimationController يتحكم في الوقت
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), // مدة العد من 0 لـ10
    );

    // 2️⃣ Tween يحدد القيم اللي هتظهر
    _counterAnimation = IntTween(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear, // سرعة ثابتة
      ),
    );

    // 3️⃣ شغل الأنيميشن
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose(); // لازم نقفل المحرك
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: AnimatedBuilder(
          animation: _counterAnimation,
          builder: (context, child) {
            return Text(
              _counterAnimation.value.toString(),
              style: TextStyle(
                fontSize: 80.sp, // لو انت مستخدم ScreenUtil
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontFeatures: const [
                  FontFeature.tabularFigures(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
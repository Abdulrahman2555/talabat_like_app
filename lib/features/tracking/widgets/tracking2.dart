import 'package:flutter/material.dart';
import 'package:talabat_like_app/features/tracking/widgets/tracking3.dart';
import 'package:talabat_like_app/widgets/widgets/topfav.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: _buildTopBar(context),
                ),

                _buildProgressSteps(),
                SizedBox(width: 20, height: 15),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 550,
                        child: Image.asset(
                          "assets/Rectangle.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 25,
                      right: 25,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tracking2()),
                        ),
                        child: Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "لم يتم تعيين رجل التوصيل بعد",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // _buildSupportButton(),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ─── Top Bar ───────────────────────────────────────────────────────────────
  Widget _buildTopBar(BuildContext context) {
    String title = 'تتبع الطلب';
    return Topfav(title);
  }

  // ─── Progress Steps ────────────────────────────────────────────────────────
  Widget _buildProgressSteps() {
    final steps = ['Customer', 'Shipping', 'Payment', 'Confirm', 'Success'];
    // 0 = done (orange filled), 1 = active (orange border), 2 = inactive
    final stepStates = [0, 0, 1, 2, 2];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        children: [
          Row(
            children: List.generate(steps.length * 2 - 1, (i) {
              if (i.isOdd) {
                final lineIndex = i ~/ 2; //1=0 ,3=1 ,5=2,7=3
                return Expanded(
                  child: Container(
                    height: 1,
                    width: 10,

                    color: stepStates[lineIndex] == 0
                        ? Colors.red
                        : const Color(0xFFDDDDDD),
                  ),
                );
              }
              final idx = i ~/ 2; //0=0,2=1,4=2,6=3,8=4
              return _StepDot(state: stepStates[idx]);
            }),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(steps.length, (i) {
              return SizedBox(
                width: 52,
                child: Text(
                  steps[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: stepStates[i] <= 1 ? Colors.red : Colors.grey,
                    fontWeight: stepStates[i] <= 1
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// ─── Helper Widgets ──────────────────────────────────────────────────────────

class _StepDot extends StatelessWidget {
  final int state; // 0=done, 1=active, 2=inactive

  const _StepDot({required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: state == 1 ? 25 : 20,
      height: state == 1 ? 20 : 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: state == 0 ? Colors.red : Colors.white,
        border: Border.all(
          color: state == 2
              ? const Color(0xFFDDDDDD)
              : state == 1
              ? const Color(0xFFFF5722)
              : const Color.fromARGB(255, 248, 0, 0),
          width: 2,
        ),
      ),
      child: state == 0
          ? Center(child: Image.asset("assets/Vector (1).png"))
          : state == 1
          ? Image.asset("assets/Ellipse 1.png")
          : null,
    );
  }
}

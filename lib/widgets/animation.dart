import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  double width = 100;
  double height = 100;
  double radius = 0;
  double opacity = 1;
  Color color = Colors.orange;
  Alignment alignment = Alignment.bottomCenter;
  Alignment alignment2 = Alignment.bottomCenter;
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            width = width == 100 ? 200 : 100;
            height = height == 100 ? 200 : 100;
            radius = radius == 0 ? 16 : 0;
            opacity = opacity == 1 ? 0 : 1;
            color = color == Colors.orange ? Colors.blue : Colors.orange;
            alignment = alignment == Alignment.bottomCenter
                ? Alignment.topCenter
                : Alignment.bottomCenter;
            alignment2 = alignment2 == Alignment.bottomCenter
                ? Alignment.topCenter
                : Alignment.bottomCenter;
            crossFadeState = crossFadeState == CrossFadeState.showFirst
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst;
          });
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.refresh, color: Colors.white),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 1500),
            width: width,
            height: height,
            decoration: BoxDecoration(
              // color: Colors.red,
              color: color.withValues(alpha: opacity),
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.orange,
                  ),
                ),
                Center(
                  child: AnimatedCrossFade(
                    firstChild: Image.asset(
                      'assets/burger.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    secondChild: Image.asset(
                      'assets/meat.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    crossFadeState: crossFadeState,
                    duration: Duration(milliseconds: 1500),
                  ),
                ),
                AnimatedAlign(
                  alignment: alignment2,
                  curve: Curves.easeOut,
                  duration: Duration(milliseconds: 3500),
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.red.withValues(alpha: opacity),
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // AnimatedPadding(
          //   duration: Duration(milliseconds: 1500),
          //   padding: const EdgeInsets.all(0.0),
          //   child: Container(
          //     width: width,
          //     height: height,
          //     decoration: BoxDecoration(
          //       color: color.withValues(alpha: opacity),
          //       borderRadius: BorderRadius.circular(radius),
          //     ),
          //   ),
          // ),
          // Container(
          //   width: width,
          //   height: height,
          //   decoration: BoxDecoration(
          //     color: color.withValues(alpha: opacity),
          //     borderRadius: BorderRadius.circular(radius),
          //   ),
          // ),
        ],
      ),
    );
    // );
  }
}

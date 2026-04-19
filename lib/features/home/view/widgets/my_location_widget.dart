import 'package:flutter/material.dart';
import 'package:talabat_like_app/widgets/animatedbell.dart';
// import 'package:talabat_like_app/widgets/widgets/location_widget.dart';

class MyLocationWidget extends StatefulWidget {
  const MyLocationWidget({super.key});
  @override
  State<MyLocationWidget> createState() => _MyLocationWidget();
}

class _MyLocationWidget extends State<MyLocationWidget> {
  //   with SingleTickerProviderStateMixin {
  // // double width = 40;
  // // double height = 40;
  // late AnimationController controller;
  // late Animation<Offset> animation;

  // @override
  // void initState() {
  //   super.initState();

  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 360),
  //   );

  //   animation = Tween<Offset>(
  //     begin: Offset(1, 0), // تحت + يمين
  //     end: Offset(-1, 0), // تحت + شمال
  //   ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

  //   controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff111c3033),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/person.png',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Current location',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),

                  Image.asset('assets/location.png'),
                ],
              ),
              Text(
                '19 Golf Street Naser City, Cairo Egypt',
                style: TextStyle(fontSize: 15, color: Color(0xff515151)),
              ),
            ],
          ),

          AnimatedBell(),

          //  Image.asset(
          //   'assets/notification.png',
          //   height: 40,
          //   width: 40,
          // ),
        ],
      ),
    );
  }
}
// class MyNotification extends StatefulWidget {
//   @override
//   _MyNotificationState createState() => _MyNotificationState();
// }

// class _MyNotificationState extends State<MyNotification>
//     with SingleTickerProviderStateMixin {

//   late AnimationController controller;
//   late Animation<Offset> animation;

//   @override
//   void initState() {
//     super.initState();

//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );

//     animation = Tween<Offset>(
//       begin: Offset(1, 1),   // تحت + يمين
//       end: Offset(-1, 1),    // تحت + شمال
//     ).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Curves.easeInOut,
//       ),
//     );

//     controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SlideTransition(
//           position: animation,
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 "Notification 🔔",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

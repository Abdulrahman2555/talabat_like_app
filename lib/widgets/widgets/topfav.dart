import 'package:flutter/material.dart';

class Topfav extends StatelessWidget {
  final String title;
  Topfav(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: double.infinity,
        height: 76,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset(
                "assets/Left Actionable .png",
                width: 24,
                height: 24,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/notification.png", width: 24, height: 24),
          ],
        ),
      ),
    );
  }
}

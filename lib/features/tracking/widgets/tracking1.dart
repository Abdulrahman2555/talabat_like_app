import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracking1 extends StatelessWidget {
  const Tracking1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(width: double.infinity, child: Image.asset("")),
            Text(""),
            Text(""),
            Divider(),
            Text(""),
            Row(
              children: [
                Image.asset(""),
                Column(children: [Text(""), Text(""), Text("")]),
              ],
            ),
            ListView.builder(
              itemCount: 3,

              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(""), Text("")],
                );
              },
            ),
            Container(
              child: Row(
                children: [
                  Container(child: Text("")),
                  Container(child: Text("")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

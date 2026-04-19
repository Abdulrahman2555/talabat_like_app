import 'package:flutter/material.dart';

class Topall extends StatelessWidget {
  const Topall({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

        title: Text("حسابي"), 
  // title → The text shown in the AppBar

  elevation: 5, 
  // elevation → Shadow height of the AppBar

  centerTitle: true, 
  // centerTitle → If true, centers the title

  leading: Image.asset("assets/notification.png",width: 0,height: 0), 
  // leading → Widget at the start of AppBar (back/menu)

  actions: [Image.asset("assets/Left Actionable .png")], 
  // actions → Widgets at the end of AppBar (right side)// title: Text("",style: TextStyle(fon),),
    );
  }
}
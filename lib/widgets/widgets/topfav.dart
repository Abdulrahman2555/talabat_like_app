import 'package:flutter/material.dart';

class Topfav extends StatelessWidget {
  const Topfav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4
                  ),
                child: Container( 
                  width: 350,
                  height: 46,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/Left Actionable .png",
                        width: 24,
                        height: 24
                        ),
                      Text(" المفضله",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Image.asset(
                        "assets/notification.png",
                        width: 24,
                        height: 24,
                              
                      )
                    ],
                  ),
                              
                ),
              );
  }
}
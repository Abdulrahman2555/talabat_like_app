import 'package:flutter/material.dart';

class Toporder extends StatelessWidget {
  const Toporder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4
                  ),
                child: Container( 

                  width: 450,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon:  Image.asset(
                            "assets/Left Actionable .png",
                            width: 35,
                            height: 35
                            ),
                            onPressed: () => 
                            Navigator.of(context).pop(),
                        ),
                        Text(" طلباتي",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        Image.asset(
                          "assets/notification.png",
                          width: 24,
                          height: 24,
                                
                        )
                      ],
                    ),
                  ),
                              
                ),
              );
  }
}
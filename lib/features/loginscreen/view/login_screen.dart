import 'package:flutter/material.dart';
import 'package:talabat_like_app/features/registerscreen/view/register.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "login screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              labelText: 'email',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'password',
            ),
          ),

          ElevatedButton(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
            ),
            onPressed: () {},
            child: Text("login", style: TextStyle(color: Colors.white)),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("dont have account"),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("register",style: TextStyle(color: Colors.blueAccent),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

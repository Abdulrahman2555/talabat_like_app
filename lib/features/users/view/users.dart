import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  // final String fullName;
  // final String company;
  // final int age;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // AddUser(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users.add({
        'full_name': "elgamal", // John Doe
        // Stokes and Sons
        'age': 50, // 42
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text("users")),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: addUser, child: Text("addusers")),
          ),
          Text(users.id),
        ],
      ),
    );
  }
}

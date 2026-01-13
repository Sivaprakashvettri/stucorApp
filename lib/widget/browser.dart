import 'package:flutter/material.dart';


class Browser extends StatelessWidget {
  const Browser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("No internet",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
    );
  }
}
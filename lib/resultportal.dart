import 'package:flutter/material.dart';

class Resultportal extends StatelessWidget {
  const Resultportal({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        height: 200,width: 350,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,boxShadow:[BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 5),]),
        child: Column(spacing: 10,
          children: [
          Text("Login To STUCOR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          Text("kindly login to continue your access",style: TextStyle(fontSize: 10,color: Colors.red),),
          Text("Email Address",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),),
           Container(height: 30,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: const Color.fromARGB(255, 241, 228, 228),),
          child:Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 5),
            child: Text("your@Email.com"),
          ) ,),

          Container(height: 30,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: const Color.fromARGB(255, 10, 24, 145)),
          child:Padding(
            padding: const EdgeInsets.only(left: 70.0,top: 5),
            child: Text("continue"),
          ) ,)
        ],),
      ),),
    );
  }
}
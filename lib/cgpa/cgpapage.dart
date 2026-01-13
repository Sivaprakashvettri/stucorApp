import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/cgpa/gpapage.dart';

class Cgpapage extends StatelessWidget {
  const Cgpapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
            child:Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Row(spacing: 30,
              children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              
              Padding(
                padding: const EdgeInsets.only(right: .0),
                child: Text("STUCOR -GPA/CGPA Calculator",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
                
               
                
              ],
            ),
          ) ,),

          InkWell(onTap: () {
            Get.to(Gpapage());
                      },
            child: Container(height: 100,width: 500,
            // color: Colors.green,
            child: Row(spacing: 90,
              children: [
              Container(height: 100,width: 70,
              // color: Colors.white,
              child: Icon(Icons.calculate,color: Colors.blue,size: 30,),),
              Container(height: 100,width: 200,
              // color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.only(right: 40,top: 40),
                child: Text("GPA Calculator",style: TextStyle(color: Colors.black,fontSize: 17),),
              ),),
              Container(height: 100,width: 30,
              // color: Colors.yellow,
              child: Icon(Icons.arrow_circle_right,color: Colors.black,size: 30,),)
            ],),),
          ),Divider(),
          InkWell(onTap: () {
                      },
            child: Container(height: 100,width: 500,
            // color: Colors.green,
            child: Row(spacing: 90,
              children: [
              Container(height: 100,width: 70,
              // color: Colors.white,
              child: Icon(BootstrapIcons.calculator_fill,color: Colors.blue,size: 30,),),
              Container(height: 100,width: 200,
              // color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0,right: 5),
                child: Text("CGPA Calculator",style: TextStyle(color: Colors.black,fontSize: 17),),
              ),),
              Container(height: 100,width: 30,
              // color: Colors.yellow,
              child: Icon(Icons.arrow_circle_right,color: Colors.black,size: 30,),)
            ],),),
          ),Divider(),
          InkWell(onTap: () {
                      },
            child: Container(height: 80,width: 500,
            // color: Colors.green,
            child: Row(spacing: 90,
              children: [
              Container(height: 100,width: 70,
              // color: Colors.white,
              child: Icon(BootstrapIcons.calendar2_plus_fill,color: Colors.blue,size: 30,),),
              Container(height: 100,width: 200,
              // color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text("Percentage Calculator",style: TextStyle(color: Colors.black,fontSize: 17),),
              ),),
              Container(height: 100,width: 30,
              // color: Colors.yellow,
              child: Icon(Icons.arrow_circle_right,color: Colors.black,size: 30,),)
            ],),),
          ),Divider()
    ]));
  }
}
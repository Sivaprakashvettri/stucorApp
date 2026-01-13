import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Notespage extends StatelessWidget {
  const Notespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
              child:Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(spacing: 30,
                children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                
                Padding(
                  padding: const EdgeInsets.only(right: .0),
                  child: Text(" STUCOR - Notes& QP",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
        
                  
                ],
              ),
            ) ,),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(Icons.computer,color: Colors.blue,size: 30,),
                Text("CSE",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.globe,color: Colors.blue,size: 30,),
                Text("IT",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 285.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.rss,color: Colors.blue,size: 30,),
                Text("ECE",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.gear_wide_connected,color: Colors.blue,size: 30,),
                Text("MECH",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.building,color: Colors.blue,size: 30,),
                Text("Civil",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.heart_pulse,color: Colors.blue,size: 30,),
                Text("BME",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Browser());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.pip,color: Colors.blue,size: 30,),
                Text("Other UG Departments",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 140.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
        
        
        
            ]),
      ));
  }
}
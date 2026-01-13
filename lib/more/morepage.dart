import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/more/listmore.dart';
import 'package:stucorclone/widget/browser.dart';

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
              child:Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(spacing: 30,
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(right: .0),
                  child: Text(" STUCOR ",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),]),))
        
         ,InkWell(onTap: () {
              Get.to(Listmore());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.globe,color: Colors.blue,size: 30,),
                Text("Menu",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Listmore());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.messenger,color: Colors.blue,size: 30,),
                Text("Contact Us",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),
            Divider(),
            InkWell(onTap: () {
              Get.to(Listmore());
            },
              child: Container(height: 80,width: 450,child: Row(spacing: 30,
                children: [
                Icon(BootstrapIcons.pip,color: Colors.blue,size: 30,),
                Text("Terms/privacy/disclaimer",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                )
              
              ],),),
            ),

      ]),
    );
  }
}
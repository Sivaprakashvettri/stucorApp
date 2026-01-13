import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/event/event.dart';

class Eventpage extends StatelessWidget {
  const Eventpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(onTap: () {
        Get.to(Event());
      },
        child: Container(height: 300,width: 500,
        // color: Colors.yellow,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0,left: 50),
              child: Container(height: 50,width: 60,
              decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(5)), color: const Color.fromARGB(255, 8, 33, 113)),
              child: Column(children: [Text("21",style: TextStyle(color: Colors.white,fontSize: 15),),
                      Text("AUG",style: TextStyle(color: Colors.white,fontSize: 15),)],),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(children: [
                 Padding(
                padding: const EdgeInsets.only(left: 30.0,),
                child: Container(height:150,width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                    child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 45),
                child: Text("CREATOR'25,Arunai",style: TextStyle(fontSize: 15,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text("Engineering College,",style: TextStyle(fontSize: 15,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("international conference,ti...",style: TextStyle(fontSize: 15,color: Colors.black),),
              )
                       
              ],),
            )
              ],),),
      ),
    );
  }
}
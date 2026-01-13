import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/onlinecourse/course.dart';

class Coursepage extends StatelessWidget {
  const Coursepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Column(spacing: 20,
        children: [
          Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
            child:Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Row(spacing: 30,
              children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              
              Padding(
                padding: const EdgeInsets.only(right: .0),
                child: Text("STUCOR - online Course",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
                
                    
               
                
              ],
            ),
          ) ,),

          InkWell(onTap: () {
            Get.to(Course());
          },
            child: Container(height: 120,width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border:Border.all(color: Colors.black) ),
            child: Row(spacing: 50,
              children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [Text( "Complete AutoCAD "),
                Text("Coutse-Cetrificate "),
                Text("include")],),
              ),
              
              Container(height: 90,width: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
              child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), )
            ],),),
          ),
          
          InkWell(onTap: (){
            Get.to(Course());
          },
            child: Container(height: 120,width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border:Border.all(color: Colors.black) ),
            child: Row(spacing: 20,
              children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [Text( "Full stack wen "),
                Text(" development Coutse-Cetrificate "),
                Text("include")],),
              ),
              
              Container(height: 90,width: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
              child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), )
            ],),),
          )
,

          InkWell(onTap: () {
            Get.to(Course());
          },
            child: Container(height: 120,width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border:Border.all(color: Colors.black) ),
            child: Row(spacing: 50,
              children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [Text( "Complete AutoCAD "),
                Text("Coutse-Cetrificate "),
                Text("include")],),
              ),
              
              Container(height: 90,width: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
              child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), )
            ],),),
          )

     
    ]));
  }
}
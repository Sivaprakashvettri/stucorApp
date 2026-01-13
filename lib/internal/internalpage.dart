import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/internal/assesspage.dart';
import 'package:stucorclone/resultwidget/result.dart';

class Internalpage extends StatelessWidget {
  const Internalpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(spacing: 20,
        children: [
          Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
            child:Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Row(spacing: 30,
              children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              
              Padding(
                padding: const EdgeInsets.only(right: .0),
                child: Text("STUCOR - Assess&Intern...",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
      
    
              ] 
                      ),
                 )
                ),
                 Column(children: [
        InkWell(onTap: () {
          Get.to(Assesspage());
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      height: 80,
                      width: 500,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 180.0,top: 10),
                            child: Text("Assessment Marks->",style: TextStyle(fontSize: 20),),
                          ),
                    
                    
                          
                        ],
                      ),
                    ),
          ),
        ),
          InkWell(onTap: () {
          Get.to(Assesspage());
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      height: 80,
                      width: 500,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 180.0,top: 10),
                            child: Text("Internal Marks->",style: TextStyle(fontSize: 20),),
                          ),
                    
            
                          
                        ],
                      ),
                    ),
          ),
        ),
      ],),
             ]
              ) 
            );
  }
}
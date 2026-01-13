
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultwidget/result.dart';
import 'package:stucorclone/schedule/schedulefirst.dart';
import 'package:stucorclone/schedule/schedulesec.dart';
import 'package:stucorclone/timetable/febtablepage.dart';
import 'package:stucorclone/timetable/tablepage.dart';

class Schedulepage extends StatelessWidget {
  const Schedulepage({super.key});

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
                child: Text("STUCOR - Schedule",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
                
               
                
              ],
            ),
          ) ,),
           Column(children: [
        InkWell(onTap: () {
          Get.to(Schedulefirst());
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      height: 130,
                      width: 500,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
                      child: Column(spacing: 10,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 150.0,top: 10,left: 10),
                            child: Text(" Practical Schedule forApr/may 2025 semester timetabe-AU Affiliated clg",style: TextStyle(fontSize: 20),),
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.only(right: 250.0),
                            child: Text(" published 1 months ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                          ),
                          
                        ],
                      ),
                    ),
          ),
        ),
          InkWell(onTap: () {
          Get.to(Schedulesec());
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      height: 130,
                      width: 500,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
                      child: Column(spacing: 10,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 150.0,top: 10,left: 10),
                            child: Text("Academic schedule fir Apr/May 2025 semester timetabe-AU Affiliated clg",style: TextStyle(fontSize: 20),),
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.only(right: 250.0),
                            child: Text(" published 3  months ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                          ),
                          
                        ],
                      ),
                    ),
          ),
        ),
      ],),
        ],
      ) ,
      
     

    );
  }
}
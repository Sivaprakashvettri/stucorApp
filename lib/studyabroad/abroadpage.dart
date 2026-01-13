import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/studyabroad/abroadform.dart';
import 'package:stucorclone/widget/browser.dart';

class Abroadpage extends StatelessWidget {
  const Abroadpage({super.key});

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
                child: Text("STUCOR - STUDY ABROAD",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
                
               
                
              ],
            ),
          ) ,),
            Container(height: 250,width: 450,
            decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)) ,border: Border.all(color: Colors.black)),
              child: Container(
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Study Abroad",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
                                ),
                                  RichText(text: TextSpan(children:[TextSpan(text:"  Feature Coming Soon : We're Xicted TO bringd completing  ",style: TextStyle(fontSize: 15),),
                                  TextSpan(text:"kindly download  timetable provide below and prepare for the examinaation accordingly" ,style: TextStyle(fontSize: 15),),
                                  TextSpan(text:"plus ,a tool stay update to know when it launches." ,style: TextStyle(fontSize: 15),),
                              
                                TextSpan(text: "click here",style: TextStyle(color: Colors.blue,fontSize: 15),
                                recognizer: TapGestureRecognizer()..onTap=(){
                                  Get.to(Abroadform());
                              
                                }),
                                TextSpan(text: " to join the waitlist and be notified as soon as it's liive !",style: TextStyle(fontSize: 15),)
                              
                              ]
                               )),
                                                           
                              
                                      
                                ],
                              ),
                            ),
                          ),
            ),
                        

      
    ]));
  }
}
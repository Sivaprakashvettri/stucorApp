import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultportal.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Assesspage extends StatelessWidget {
  const Assesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 600,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)),
              border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                   Padding(
                          padding: const EdgeInsets.only(right: 70.0,top: 10),
                          child: Text("Semester Results ",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        
                          Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 10,left: 10),
                          child: Text(" The internal short comprehension passage practice in skimming-scanning and predictin Writing- completing sentences thank you.",style: TextStyle(fontSize: 20),),
                        ),
                          Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [Padding(
                                padding: const EdgeInsets.only(right: 190.0),
                                child: Text("Steps to Check your internal marks",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              ),
                                Text(" 1.To Listening- listening to dialogues or conversations and completing  Thank you.",style: TextStyle(fontSize: 20),),
                            
                          
                              Text( " 2.To Listening- listening to dialogues or conversations and completing .",style: TextStyle(fontSize: 20),)
                            
                            ]
                             
                                                         
                            
                                    
              ))),
               Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: () {
                            Get.to(Resultportal());
                          },
                            child: Container(height: 30,width: 180,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),),
                            color: const Color.fromARGB(255, 6, 37, 136)),child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Text("INTERNALS PORTAL",style: TextStyle(color: Colors.white),),
                                ),
                                Icon(Icons.arrow_right,size: 15,color: Colors.white,)
                              ],
                            ),),
                          ),
                        ),
                         Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(children: [
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("INTERNALS",style: TextStyle(color: Colors.blue,fontSize: 10),),
                              ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("UG",style: TextStyle(color: Colors.black,fontSize: 10),),
                              ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("PG ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                              ),),
                            
                            
                            
                            
                            
                            ],),
                             Column(children: [
                          Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                          ,border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("STATUS",style: TextStyle(color: Colors.blue,fontSize: 10),),
                          ),),
                          Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                          ,border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(" Not Publshed",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ),),
                          Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                          ,border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Not Published",style: TextStyle(fontSize: 10),),
                          ),),
                          




                        ],)
                       
                        
                          ],
                        ),
                            Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text:" To check Listening- listening to dialogues our.",style: TextStyle(fontSize: 20),),
                            
                              TextSpan(text: "Assessment section",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Assesspage());
                            
                              }),
              
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),
                         Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children: [TextSpan(text:"Note:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
                              TextSpan(text: " The  internal Listening- listening to STUCOR App's .",style: TextStyle(fontSize: 20),),
                               
                              TextSpan(text:" to check your GPA/CGPA scores",style: TextStyle(fontSize: 20), ),
                               
                              TextSpan(text:" To Listening- listening Anna university domain.",style: TextStyle(fontSize: 20), )
                              
                             
                            
                              ])),
                                    
                              ],
                            ),
                          ),
                        ),
                    
              ],
                            ),
                          ),
                        ),

                        Container(height: 100,width: 500,color: const Color.fromARGB(255, 11, 25, 118),
                        child: Icon(Icons.message,color: Colors.white,),)
                       
                    

                       
                        
                                          

                       
                ],
              ),
            ),
          );
         
          
        
        
        
        
  
  }
}
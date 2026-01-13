import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultportal.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 900,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)),
              border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                        
                          Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 10,left: 10),
                          child: Text("feb/mar 2025Reading- short comprehension passage practice in skimming-scanning and predictin Writing- completing sentences.",style: TextStyle(fontSize: 20),),
                        ),
                          Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text:" To Listening- listening to dialogues or conversations and completing  Thank you.",style: TextStyle(fontSize: 20),),
                            
                              TextSpan(text: "click here",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Browser());
                            
                              }),
                              TextSpan(text: " To Listening- listening to dialogues or conversations and completing .",style: TextStyle(fontSize: 20),)
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: () {
                            Get.to(Resultportal());
                          },
                            child: Container(height: 30,width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),),
                            color: const Color.fromARGB(255, 6, 37, 136)),child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Text("RESULT PORTAL I",style: TextStyle(color: Colors.white),),
                                ),
                                Icon(Icons.arrow_right,size: 15,color: Colors.white,)
                              ],
                            ),),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: InkWell(onTap: () {
                             Get.to(Resultportal());
                           },
                             child: Container(height: 30,width: 150,
                                                     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),),
                                                     color: const Color.fromARGB(255, 6, 37, 136)),child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Text("RESULT PORTAL II",style: TextStyle(color: Colors.white),),
                                ),
                                Icon(Icons.arrow_right,size: 15,color: Colors.white,)
                              ],
                                                     ),),
                           ),
                         ),

                         Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children: [TextSpan(text:"Note:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
                              TextSpan(text: " To Listening- listening to STUCOR App's .",style: TextStyle(fontSize: 20),),
                               TextSpan(text: "GPA/CGPA Caculator",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Browser());
                            
                              }),
                              TextSpan(text:" to check your GPA/CGPA scores",style: TextStyle(fontSize: 20), ),
                               TextSpan(text: "Clich Here",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Browser());
                            
                              }),
                              TextSpan(text:" To Listening- listening to dialogues or conversations and completing  thank you.",style: TextStyle(fontSize: 20), )
                              
                             
                            
                              ])),
                                    
                              ],
                            ),
                          ),
                        ),
                        Text("_________________________________________________________________",style: TextStyle(color: Colors.grey),),
                        
                         Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 10),
                          child: Text("SEMESTER RESULT STATUS",style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text("APR/MAY 2025 EXAMINATION",style: TextStyle(fontSize: 20),),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(children: [
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("UG RESULTS",style: TextStyle(color: Colors.blue,fontSize: 10),),
                              ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("IV year- project work",style: TextStyle(color: Colors.black,fontSize: 10),),
                              ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("PG RESULTS",style: TextStyle(color: Colors.blue,fontSize: 10),),
                              ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                              ,border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 10),),
                              ),)
                            
                            
                            
                            
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
                            child: Text("Publshed",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ),),
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
                            child: Text("-",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ),)




                        ],)
                       
                        
                          ],
                        ),
                        Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text:" To Listening- listening to dialogues or conversations and completing  Thank you.",style: TextStyle(fontSize: 20),),
                            
                              TextSpan(text: "WH Codes",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Browser());
                            
                              }),
                              TextSpan(text: " To Listening- listening to dialogues or conversations codes .",style: TextStyle(fontSize: 20),)
                            
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
                              TextSpan(text: " To Listening- listening to STUCOR App's .",style: TextStyle(fontSize: 20),),
                               
                              TextSpan(text:" to check your GPA/CGPA scores",style: TextStyle(fontSize: 20), ),
                               
                              TextSpan(text:" To Listening- listening to dialogues or conversations and completing  thank you.",style: TextStyle(fontSize: 20), )
                              
                             
                            
                              ])),
                                    
                              ],
                            ),
                          ),
                        ),
                        
                                          

        
                 
                       
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: BottomNavigationBar(type: BottomNavigationBarType.fixed,
              backgroundColor: const Color.fromARGB(255, 33, 89, 243),
                items:[BottomNavigationBarItem(icon: IconButton(onPressed: (){
                  Get.to(Comment());
                }, icon: Icon(Icons.message,color: Colors.white,),
                 ), label:   ""  ),BottomNavigationBarItem(icon:IconButton(onPressed: (){
                  Get.to(Browser());
        
                 }, icon:  Icon(Icons.share,color: Colors.white,)),label: ""
              )
              ]),
          ),
          
          
        
        
        
        
        ],
        ),
      ),
    );
  }
}
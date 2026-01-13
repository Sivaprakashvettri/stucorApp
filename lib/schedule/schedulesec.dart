import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Schedulesec extends StatelessWidget {
  const Schedulesec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(spacing: 20,
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
        
            
                ] 
                        ),
                   )
                  ),
        
                  Container(height: 550,
                  width: 450,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
                  border: Border.all(color: Colors.black)),
                   child: Column(
                children: [
                   Padding(
                            padding: const EdgeInsets.only(right: 150.0,top: 10,left: 10,bottom: 10),
                            child: Text(" Academic Schedule for Apr/may 2025 semester timetabe-AU Affiliated clg",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 9, 19, 135)),),
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.only(right: 235.0),
                            child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 280.0),
                            child: Text("_________________"),
                          ),
                         
                        
                        
                          Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text:" Anna University exam timetable or conversations and completing  kindly download  timetable provide below and prepare for the examinaation accordingly- .",style: TextStyle(fontSize: 20),),
                            
                              TextSpan(text: "click here",style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Get.to(Browser());
                            
                              }),
                              TextSpan(text: " to Share clasmates. ompleting Thank you .",style: TextStyle(fontSize: 20),)
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),
                        
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("DEGRESS/SEM",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
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
                                  child: Text("PG",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                              
                              
                              
                              
                              
                              ],),
                               Column(children: [
                            Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("SCHEDULE",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                            ),),
                                                     
                            Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Downlaod",style: TextStyle(fontSize: 10,color: Colors.blue),),
                            ),),
                             Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Downlaod",style: TextStyle(fontSize: 10,color: Colors.blue),),
                            ),),
                           
                            
                            
                            
                            
                                                    ],)
                                                   
                                                    
                            ],
                                                    ),
                          ),
                         Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children: [TextSpan(text:"Note:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
                              TextSpan(text: " Download links serve PDFs from Anna University Domians I.",style: TextStyle(fontSize: 20),),
                               
                              
                              
                             
                            
                              ])),
                                    
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(spacing: 2,
                            children: [
                              Text("SOURCE:",style: TextStyle(fontWeight: FontWeight.bold),),
                              InkWell(onTap: () {
                                Get.to(Browser());
                              },
                                child: Text("coe1.annauniv.edu",style: TextStyle(color: Colors.blue),))
                            ],
                          ),
                        )
                         
      


                        ],)
                        
                       
                        
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
          
          
        
        ]
        ,
                        ),
      ),
      
      );
  }
}
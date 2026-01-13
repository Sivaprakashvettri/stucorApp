import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Ranklist extends StatelessWidget {
  const Ranklist({super.key});

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
                  child: Text("STUCOR - Rank & Medalist",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
        
            
                ] 
                        ),
                   )
                  ),
        
                  Container(height: 600,
                  width: 450,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
                  border: Border.all(color: Colors.black)),
                   child: Column(
                children: [
                   Padding(
                            padding: const EdgeInsets.only(right: 150.0,top: 10,left: 10,bottom: 10),
                            child: Text("Ranklist of AU Affiliated colleges",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 9, 19, 135)),),
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.only(right: 235.0),
                            child: Text(" published 11 months ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 280.0),
                            child: Text("_________________"),
                          ),
                         
                        
                        
                          Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text:" Every academic year Anna University exam timetable or conversations and completing  kindly download  timetable provide below and prepare for the examinaation accordingly- .",style: TextStyle(fontSize: 20),),
                            
                              
                              TextSpan(text: "  Wehave attached those to Share  details for reference Below.",style: TextStyle(fontSize: 20),)
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("UG - YEAR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                ),),
                                Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("2023",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                                 Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("2022",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                                 Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("2021",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                                 Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("2020",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                                
                               
                              
                              
                              ],),
                               Column(children: [
                            Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("RANKLIST",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                            ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Download",style: TextStyle(color: Colors.blue,fontSize: 10),),
                            ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Download",style: TextStyle(color: Colors.blue,fontSize: 10),),
                            ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Download",style: TextStyle(color: Colors.blue,fontSize: 10),),
                            ),),
                              Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Download",style: TextStyle(color: Colors.blue,fontSize: 10),),
                            ),),
                                
                           
                                              
                                   
                                       ]),
                                           ]),
                         ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("PG- YEAR",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                ),),
                                Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                ,border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("2023",style: TextStyle(color: Colors.black,fontSize: 10),),
                                ),),
                                 Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                  ,border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("2022",style: TextStyle(color: Colors.black,fontSize: 10),),
                                  ),),
                                   Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                  ,border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("2021",style: TextStyle(color: Colors.black,fontSize: 10),),
                                  ),),
                                   Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                                  ,border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("2020",style: TextStyle(color: Colors.black,fontSize: 10),),
                                  ),),
                                  
                              
                              
                              
                              
                              
                              ],),
                               Column(children: [
                            Container(height: 20,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle
                            ,border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("TIMETABLE",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
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
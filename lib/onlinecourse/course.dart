import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultportal.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(spacing: 20,
          children: [
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
                          padding: const EdgeInsets.only(right: 40.0,top: 10),
                          child: Text("Complete AutoCAD Course-",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        Text("certificate included",style: TextStyle(fontSize: 20,color: Colors.blue),),
                          Container(height: 100,width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
            child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), ),
          

                        
                          Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 10,left: 10),
                          child: Text("  AutoCAD is popuplar CAD internal short comprehension passage practice in skimming-scanning and predictin Writing- completing sentences thank you.",style: TextStyle(fontSize: 20),),
                        ),
                    Column(spacing: 20,
                      children: [  Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.only(right: 150.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text: "Course Offered By:",style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text:"  Eduprep,a STUCOR initiative.",),
                            
                              
              
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),
                         
                            Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Column(
                              children: [RichText(text: TextSpan(children:[TextSpan(text: "Course Fee:",style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text:"  999 18,000 (only for Students ) -one -time fee ,ACcess.",),
                            
                              
              
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),],),
                         Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [Padding(
                                padding: const EdgeInsets.only(right: 190.0),
                                child: Text("What you get with This AutoCAD Course?",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 200.0),
                                  child: Text(" -industry recognised certificate",),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 220.0),
                                    child: Text( " -28 Hours of Video Lessons",),
                                  ),
                            
                          
                              Padding(
                                padding: const EdgeInsets.only(right: 257.0),
                                child: Text( "-project &Assigment",),
                              )
                            
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
                                  child: Text("VIEW MORE/ENROLL",style: TextStyle(color: Colors.white),),
                                ),
                                Icon(Icons.arrow_right,size: 15,color: Colors.white,)
                              ],
                            ),),
                          ),
                        ),
                       
                    
              ],
                            ),
                          ),
                        ),

 Container(height: 100,width: 500,color: const Color.fromARGB(255, 11, 25, 118),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Row(spacing: 200,
                            children: [
                              Icon(Icons.message,color: Colors.white,),
                              Icon(Icons.share,color: Colors.white,),
                          
                            ],
                          ),
                        ),),

                       
                       
                    

                       
                        
                                          

                       
                ],
              ),
            ),
          );
         
          
        
        
        
        
  
  }
}
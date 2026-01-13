import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(spacing: 20,
          children: [
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
                          padding: const EdgeInsets.only(right: 240,top: 10),
                          child: Text("CREATOR'25 ; Arunai",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0),
                          child: Text("Engineering college,",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 220.0),
                          child: Text("International   Cnfreence,",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280.0),
                          child: Text("Tiruvannamalai",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(spacing: 20,
                            children: [Icon(Icons.timer),
                          Text("From Thursday 21 August 2025 untill")],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 250.0),
                          child: Text("friday,22 Augusut 2025"),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(height: 150,width: 300,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                                        child:Image.network("https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg"), ),
                          ),
          

                        
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
                              children: [RichText(text: TextSpan(children:[TextSpan(text: "Contact Details",style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text:"  ContACT US:=91 9987654321,=91 98987653423",),
                            
                              
              
                            
                            ]
                             )),
                                                         
                            
                                    
                              ],
                            ),
                          ),
                        ),],),
                         Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Container(
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [Padding(
                                  padding: const EdgeInsets.only(right: 190.0),
                                  child: Text("-Last dates for rergistration",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 200.0),
                                    child: Text("- industry recognised certificate",),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 220.0),
                                      child: Text( " -28 Hours of Video Lessons",),
                                    ),
                              
                            
                                Padding(
                                  padding: const EdgeInsets.only(right: 257.0),
                                  child: Text( "project &Assigment",),
                                )
                              
                              ]
                               
                                                           
                              
                                      
                                         ))),
                         ),
                          Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [Padding(
                                  padding: const EdgeInsets.only(right: 190.0),
                                  child: Text("How To each Arunai eng clg, Tiruvannamalai",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 200.0),
                                    child: Text("Map: https://maps.app.goo.gl/Le6CVNa6UB2iXyMr5",),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 220.0),
                                      child: Text( " Certficatets will be provide to all partcipant",),
                                    ),
                              
                            
                                Padding(
                                  padding: const EdgeInsets.only(right: 257.0),
                                  child: Text( "project &Assigment",),
                                )
                              
                              ]
                               
                                                           
                              
                                      
                                         ))),
                         ),
                        

              
                       Padding(
                         padding: const EdgeInsets.only(left: 50.0),
                         child: Row(children: [
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(onTap: () {
                              Get.to(Browser());
                            
                            },
                              child: Container(height: 30,width: 150,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),)
                              ,border: Border.all(color: const Color.fromARGB(255, 6, 35, 152)),
                              ),child: Row(spacing: 5,
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 30.0),
                                     child: Icon(BootstrapIcons.globe,size: 15,color: const Color.fromARGB(255, 6, 12, 131),),
                                   ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Websites",style: TextStyle(color: const Color.fromARGB(255, 18, 10, 118)),),
                                  ),
                                 
                                ],
                              ),),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(onTap: () {
                              Get.to(Browser());
                            
                            },
                              child: Container(height: 30,width: 150,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),)
                              ,border: Border.all(color: const Color.fromARGB(255, 6, 35, 152)),
                              ),child: Row(spacing: 5,
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10.0),
                                     child: Icon(BootstrapIcons.envelope,size: 15,color: const Color.fromARGB(255, 6, 12, 131),),
                                   ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Send An email",style: TextStyle(color: const Color.fromARGB(255, 18, 10, 118)),),
                                  ),
                                 
                                ],
                              ),),
                            ),
                          ),
                         
                         
                         ],),
                       )
                    
              ],
                            ),
                          ),
                        ),

 

                       
                       
                    

                       
                        
                                          

                       
                ],
              ),
            ),
     
    );
  }
}
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Abroadform extends StatelessWidget {
  Abroadform({super.key});
  final _formkey =GlobalKey<FormState>();

  RegExp pass_valid = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

   bool validatePassword(String pass){
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)){
      return true;
    }else{
      return false;
    }

   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Form(key:  _formkey,
          child: SingleChildScrollView(
            child: Column(spacing: 20,
            children: [
              Container(height: 80,width: 500,color: const Color.fromARGB(255, 11, 49, 174),
                child:Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(spacing: 45,
                  children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                   
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text("study abroad wait...",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("form.stucorapp.com",style: TextStyle(color: Colors.white,fontSize: 7),)
                      ],
                    ),
                  ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
            
                   
                    
                  ],
                ),
              ) ,),
              Container(height: 200,width: 450,
                decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)) ,),
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
                                  
                                  
                                    TextSpan(text: " to join the waitlist and be notified as soon as it's live !",style: TextStyle(fontSize: 15),)
                                  
                                  ]
                                   )),
            
                                
                                                               
                                  
                                          
                                    ],
                                  ),
                                ),
                              ),
                ),
                   Padding(
                     padding: const EdgeInsets.only(right: 330.0),
                     child: Text("Enter the Details:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(7.0),
                                     child: TextFormField( decoration: InputDecoration(hintText: "Name",hintStyle: TextStyle(color: Colors.grey),
                                     contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                                     suffixIcon: Padding(
                                       padding: const EdgeInsets.only(left:90.0,bottom: 35),
                                       child: Icon(Icons.star_outline_outlined,size: 20,color: Colors.black,),
                                     )),
                                     validator: (value) {
            if(value!.isEmpty){
              return "please enter value";
            }
            else{bool result=validatePassword(value);
            if (result){
              return null;
            }else {return "enter correct password";
            }
            }
          
          },
          ),
                                   ),
                                    Padding(
                                     padding: const EdgeInsets.all(7.0),
                                     child: TextFormField( decoration: InputDecoration(hintText: "Email address",hintStyle: TextStyle(color: Colors.grey),
                                     contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                                     suffixIcon: Padding(
                                       padding: const EdgeInsets.only(left:90.0,bottom: 35),
                                       child: Icon(Icons.star_outline_outlined,size: 20,color: Colors.black,),
                                     )),
                                     validator: (value) {
            if(value!.isEmpty){
              return "please enter value";
            }
            else{bool result=validatePassword(value);
            if (result){
              return null;
            }else {return "enter correct password";
            }
            }
          
          },
          ),
                                   ),
                                    Padding(
                                     padding: const EdgeInsets.all(7.0),
                                     child: TextFormField( decoration: InputDecoration(hintText: "Phone number",hintStyle: TextStyle(color: Colors.grey),
                                     contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                                     suffixIcon: Padding(
                                       padding: const EdgeInsets.only(left:90.0,bottom: 35),
                                       child: Icon(Icons.star_outline_outlined,size: 20,color: Colors.black,),
                                     )),
                                     validator: (value) {
            if(value!.isEmpty){
              return "please enter vaLue";
            }
            else{bool result=validatePassword(value);
            if (result){
              return null;
            }else {return "enter correct password";
            }
            }
          
          },
          ),
                                   ),
                                    Padding(
                                     padding: const EdgeInsets.all(7.0),
                                     child: TextFormField( decoration: InputDecoration(hintText: "UGgradution/passed out year",hintStyle: TextStyle(color: Colors.grey),
                                     contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                                     suffixIcon: Padding(
                                       padding: const EdgeInsets.only(left:90.0,bottom: 35),
                                       child: Icon(Icons.star_outline_outlined,size: 20,color: Colors.black,),
                                     )),
                                     validator: (value) {
            if(value!.isEmpty){
              return "please enter value";
            }
            else{bool result=validatePassword(value);
            if (result){
              return null;
            }else {return "enter correct password";
            }
            }
          
          },
          ),
                                   ),
          
                                   Row(spacing: 200,
                                    children: [
                                     ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black)),
                                      onPressed: (){
          _formkey.currentState!.validate();
                }, child: Text("Join the waitlist ->")),
              
                                   Container(height: 30,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))
                                   ,border: Border.all(color: Colors.black26
                                   ,), ),child: Icon(BootstrapIcons.asterisk,color: Colors.pink,),)
            
            ],)
            
            
                            
            
                
               ] ),
          ),
        ));
  }
}
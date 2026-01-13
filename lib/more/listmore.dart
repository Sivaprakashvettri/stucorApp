import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/event/eventpage.dart';
import 'package:stucorclone/internal/internalpage.dart';
import 'package:stucorclone/notespage/notespage.dart';
import 'package:stucorclone/onlinecourse/coursepage.dart';
import 'package:stucorclone/resultwidget/resultpage.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/newspage.dart';

class Listmore extends StatelessWidget {
  const Listmore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [InkWell(onTap: () {
                Get.to(Newspage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(Icons.newspaper,color: Colors.blue,size: 30,),
                  Text("news",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 270.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              Divider(),
              InkWell(onTap: () {
                Get.to(Resultpage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(BootstrapIcons.journal_check,color: Colors.blue,size: 30,),
                  Text("Result",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 260.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              Divider(),
              InkWell(onTap: () {
                Get.to(Internalpage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon( BootstrapIcons.journal_medical,color: Colors.blue,size: 30,),
                  Text("internals",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 240.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              InkWell(onTap: () {
                Get.to(Browser());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(BootstrapIcons.calculator,color: Colors.blue,size: 30,),
                  Text("GPA/CGPA...",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 210.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              Divider(),
              InkWell(onTap: () {
                Get.to(Notespage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon( Icons.note,color: Colors.blue,size: 30,),
                  Text("Notes/QP",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 230.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              Divider(),
              InkWell(onTap: () {
                Get.to(Coursepage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(BootstrapIcons.person_video3,color: Colors.blue,size: 30,),
                  Text("Online Course",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
        InkWell(onTap: () {
                Get.to(Eventpage());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(BootstrapIcons.calendar,color: Colors.blue,size: 30,),
                  Text("Event",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 260.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              Divider(),
              InkWell(onTap: () {
                Get.to(Browser());
              },
                child: Container(height: 80,width: 450,child: Row(spacing: 30,
                  children: [
                  Icon(BootstrapIcons.calendar_event_fill,color: Colors.blue,size: 30,),
                  Text("TmeTable",style: TextStyle(fontSize: 15),),
                  Padding(
                    padding: const EdgeInsets.only(left: 225.0),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.black,)),
                  )
                
                ],),),
              ),
              
        ],),
      ),
    );
  }
}
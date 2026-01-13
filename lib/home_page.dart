import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/cgpa/cgpapage.dart';
import 'package:stucorclone/event/eventpage.dart';
import 'package:stucorclone/internal/internalpage.dart';
import 'package:stucorclone/mainwidget.dart';
import 'package:stucorclone/more/morepage.dart';
import 'package:stucorclone/notespage/notespage.dart';
import 'package:stucorclone/onlinecourse/coursepage.dart';
import 'package:stucorclone/rank/rankpage.dart';
import 'package:stucorclone/resultwidget/resultpage.dart';
import 'package:stucorclone/schedule/schedulepage.dart';
import 'package:stucorclone/studyabroad/abroadpage.dart';
import 'package:stucorclone/syllabus/syllabuspage.dart';
import 'package:stucorclone/timetable/timepage.dart';
import 'package:stucorclone/widget/newspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 9, 32, 144),
        title: Text("STUCOR",style: TextStyle(color: Colors.white,fontSize: 20),),
      actions: [IconButton(onPressed: (){
        Get.to(Newspage());
      }, icon: Icon(BootstrapIcons.bell,color: Colors.white,),)],
      ),
      body: SingleChildScrollView(
        child: Column(spacing: 20,
          children: [ 
                  Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Trusted by 20 Lakh+ Students",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        
          Row(spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
              onTap: () {
                Get.to(Newspage());
              },
              child: Mainwidget(icon: Icons.newspaper, text: "News", size: 40, color: Colors.blueAccent)),
             InkWell(
              onTap: () {
                Get.to(Resultpage());
              },
              child: Mainwidget(icon: BootstrapIcons.journal_check, text: "Results", size: 40, color: Colors.blueAccent)),
           InkWell(
              onTap: () {
                Get.to(Internalpage());
              },
              child: Mainwidget(icon: BootstrapIcons.journal_medical, text: "Internals", size: 40, color: Colors.blueAccent)),
           
            
             ],),
             Row(spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
              onTap: () {
                Get.to(Cgpapage());
              },
              child: Mainwidget(icon: BootstrapIcons.calculator, text: "GPA/CGPA C...", size: 40, color: Colors.blueAccent)),
             InkWell(
              onTap: () {
                Get.to(Notespage());
              },
              child: Mainwidget(icon: Icons.note, text: "Notes/QP", size: 40, color: Colors.blueAccent)),
           InkWell(
              onTap: () {
                Get.to(Coursepage());
              },
              child: Mainwidget(icon: BootstrapIcons.person_video3, text: "Online Course", size: 40, color: Colors.blueAccent)),
           
            
             ],),

             Container(
height: 40,
width: 470,
decoration: BoxDecoration(
  color: const Color.fromARGB(255, 238, 211, 176),
  borderRadius: BorderRadius.all(Radius.circular(5))
),
child: Padding(
  padding: const EdgeInsets.only(top:8.0,left: 95),
  child: Text("Used by 20k+ faculty | 20 lakh+ Students",style: TextStyle(
    color: Colors.black,fontSize: 15
  ),),
),

             ),
             Row(spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
              onTap: () {
                Get.to(Eventpage());
              },
              child: Mainwidget(icon: BootstrapIcons.calendar, text: "Event", size: 40, color: Colors.blueAccent)),
             InkWell(
              onTap: () {
                Get.to(Timepage());
              },
              child: Mainwidget(icon:BootstrapIcons.calendar_event_fill, text: "Timetable", size: 40, color: Colors.blueAccent)),
           InkWell(
              onTap: () {
                Get.to(Syllabuspage());
              },
              child: Mainwidget(icon: BootstrapIcons.journal_text, text: "Syllabus", size: 40, color: Colors.blueAccent)),
           
            
             ],),
             Row(spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
              onTap: () {
                Get.to(Schedulepage());
              },
              child: Mainwidget(icon: BootstrapIcons.journal_album, text: "Schedule", size: 40, color: Colors.blueAccent)),
             InkWell(
              onTap: () {
                Get.to(Rankpage());
              },
              child: Mainwidget(icon:BootstrapIcons.award_fill, text: "Rank/Medalist", size: 40, color: Colors.blueAccent)),
           InkWell(
              onTap: () {
                Get.to(Abroadpage());
              },
              child: Mainwidget(icon: BootstrapIcons.geo_alt_fill, text: "Study Abroad", size: 40, color: Colors.blueAccent)),
           
            
             ],),
          
          ],
            ),
      ),bottomNavigationBar: 
      ClipRRect(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30),)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
             unselectedItemColor: Colors.black,unselectedLabelStyle: TextStyle(color: Colors.black),
              items:  [BottomNavigationBarItem(icon: Icon(BootstrapIcons.globe,color: Colors.blue,),label: "Home"),
            BottomNavigationBarItem(icon: InkWell(onTap: () {
              Get.to(Resultpage());
            },
              child: Icon(BootstrapIcons.journal_check,color: Colors.black,)),label: "Results"),
            BottomNavigationBarItem(icon: InkWell(onTap: () {
              Get.to(Notespage());
            },
              child: Icon(Icons.note,color: Colors.black,)),label: "Notes/QP"),
            BottomNavigationBarItem(icon: InkWell(onTap: () {
              Get.to(Morepage());
            },
              child: Icon(Icons.more_rounded,color: Colors.black,)),label: "More")]),
          ),
        ),
      ),
        
         
        );
    
  
  }
}
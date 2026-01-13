import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Gpapage extends StatelessWidget {
  const Gpapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(spacing: 20,
        children: [
         Padding(
                          padding: const EdgeInsets.only(right: 70.0,top: 10),
                          child: Text("GPA Calculator",style: TextStyle(fontSize:20,color:  Colors.blue),),
                        ),
                        RichText(text: TextSpan(children: [TextSpan(text:"Note:",style: TextStyle(color: Colors.greenAccent), ),
                              TextSpan(text: " To Listening- listening to STUCOR App's .",style: TextStyle(color: Colors.greenAccent),),
                              TextSpan(text: " apr/may 2024and nov/dec 2024",style: TextStyle(color: Colors.greenAccent),),
                              TextSpan(text: " kindly refer grade sheet",style: TextStyle(color: Colors.greenAccent),),
                               TextSpan(text: "GPA/CGPA Caculator college to knows your GPA.",style: TextStyle(color: Colors.greenAccent),
                              
                  
                        )],),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 300,width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
      border:Border.all(color: Colors.black) ),
      child: Column(spacing: 10,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text("Selected Regulation",style: TextStyle(color: Colors.blue),),
        ),
        Container(height: 40,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: Colors.black)),
        child: Row(spacing: 60,
          children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text("choose Regulation",style: TextStyle(fontSize: 10,color: CupertinoColors.darkBackgroundGray),),
          ),
          PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Row(spacing: 10,
            children: [Text("REGULATION 2021"),
            Text("o",style: TextStyle(fontSize: 10),)],
          ))],)
        ],),),
        Text("Selected Department",style: TextStyle(color: Colors.blue),),
        Container(height: 40,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: Colors.black)),
        child: Row(spacing: 45,
          children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text("choose Department",style: TextStyle(fontSize: 10,color: CupertinoColors.darkBackgroundGray),),
          ),
          PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Column(
            children: [
              Row(spacing: 10,
                children: [Text("CSE"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("IT"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("BME"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("ECE"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("MECH"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("AIDS"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              
              
            ],
          ))],)
        ],),),
        Text("Selected Semester",style: TextStyle(color: Colors.blue),),
        Container(height: 40,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: Colors.black)),
        child: Row(spacing: 60,
          children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text("choose Semester",style: TextStyle(fontSize: 10,color: CupertinoColors.darkBackgroundGray),),
          ),
          PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child:  Column(
            children: [
              Row(spacing: 10,
                children: [Text("Semester 1"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("Semester 2"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("Semester 3"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("Semester 3"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("Semester 4"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(spacing: 10,
                children: [Text("Semester 5"),
                Text("o",style: TextStyle(fontSize: 10),),
                ],
              ),
              
              
            ],))],)
        ],),)
      ],),),
    ),
      RichText(text: TextSpan(children: [TextSpan(text:"Disclaimers:",style: TextStyle(color: Colors.greenAccent), ),
                              TextSpan(text: " This Listening- listening to STUCOR App's ",style: TextStyle(color: Colors.greenAccent),),
                              TextSpan(text: " marksheet are final.",style: TextStyle(color: Colors.greenAccent),),
                      
    ]
    )
    ),
  
        InkWell(onTap: () {
          Get.to(Browser());
        },
          child: Padding(
            padding: const EdgeInsets.only(left: 250.0),
            child: Text("Report an issue/bug >"),
          ))
      ]));
  }
}
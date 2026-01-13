import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(BootstrapIcons.chat,size: 50,),
          Text("No Comment",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
           Text("be the first to post a comment",style: TextStyle(fontSize: 18,),),
           Padding(
             padding: const EdgeInsets.only(top: 250,left: 400),
             child: Container(height: 50,width: 50,decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(255, 4, 23, 160)),
             child: Icon(BootstrapIcons.pencil_square),),
           )
        ],
      ),),

    )
    ;
  }
}
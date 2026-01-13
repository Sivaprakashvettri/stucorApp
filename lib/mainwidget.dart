import 'package:flutter/material.dart';

class Mainwidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final String text;
  final Color color;
  const Mainwidget({super.key,required this.icon,required this.text,required this.size,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(height: 80,width: 100,child: Column(children: [
 Icon(icon,size: size
 ,color: color,),
 Text(text),

    ],),
      
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:stucorclone/widget/news.dart';
// class Newspage extends StatelessWidget {
//   const Newspage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body:
//        SingleChildScrollView(
//          child: Column(spacing: 5,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: InkWell(onTap: () {
//                 Get.to(News());
//               },
//                 child: Container(
//                   height: 100,
//                   width: 500,
//                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 180.0,top: 10),
//                         child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 260.0),
//                         child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 250.0),
//                         child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                       ),
                      
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: InkWell(onTap: () {
//                 Get.to(News());
//               },
//                 child: Container(
//                   height: 100,
//                   width: 500,
//                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 180.0,top: 10),
//                         child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 260.0),
//                         child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 250.0),
//                         child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                       ),
                      
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 100,
//                 width: 500,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 180.0,top: 10),
//                       child: Text("Semester Results published-",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 260.0),
//                       child: Text("Distance Education",style: TextStyle(fontSize: 20),),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 250.0),
//                       child: Text(" published 11 days ago | jul 25 - 02:42 pm ",style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ),
                    
//                   ],
//                 ),
//               ),
//             )
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
//           ],
//                ),
//        ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/news.dart';

class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.01,
              ),
              child: InkWell(
                onTap: () {
                  Get.to(() => News());
                },
                child: Container(
                  width: width,
                  height: height * 0.14,
                  padding: EdgeInsets.all(width * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Semester Results published -",
                        style: TextStyle(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: height * 0.005),
                      Text(
                        "Distance Education",
                        style: TextStyle(
                          fontSize: width * 0.04,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: height * 0.008),
                      Text(
                        "Published 11 days ago | Jul 25 - 02:42 pm",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

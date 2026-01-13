// 

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Container(
            width: width,
            padding: EdgeInsets.all(width * 0.04),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Semester Results published-",
                  style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "Distance Education",
                  style: TextStyle(fontSize: width * 0.048),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "Published 11 days ago | Jul 25 - 02:42 pm",
                  style: TextStyle(
                    fontSize: width * 0.03,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Divider(color: Colors.grey),
                SizedBox(height: height * 0.01),
                Text(
                  "Feb/Mar 2025 Reading - short comprehension passage practice in skimming, scanning and predicting. Writing - completing sentences.",
                  style: TextStyle(fontSize: width * 0.045),
                ),
                SizedBox(height: height * 0.015),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: width * 0.045,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            "To Listening - listening to dialogues or conversations and completing. ",
                      ),
                      TextSpan(
                        text: "Click here",
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => Browser());
                          },
                      ),
                      const TextSpan(
                        text:
                            " to continue listening practice.",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      /// ✅ Bottom Navigation (Responsive & Fixed)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 33, 89, 243),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(() => Comment());
              },
              icon: const Icon(Icons.message, color: Colors.white),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(() => Browser());
              },
              icon: const Icon(Icons.share, color: Colors.white),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}

// 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultwidget/result.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [

          /// 🔵 HEADER
          Container(
            height: height * 0.1,
            width: width,
            color: const Color.fromARGB(255, 11, 49, 174),
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                Text(
                  "STUCOR - Results",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share, color: Colors.white),
                ),
              ],
            ),
          ),

          SizedBox(height: height * 0.02),

          /// 📄 RESULT LIST
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  resultCard(
                    context,
                    title: "Semester Results published",
                  ),
                  resultCard(
                    context,
                    title: "Revaluations / Review results",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ✅ RESPONSIVE CARD WIDGET
  Widget resultCard(BuildContext context, {required String title}) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        Get.to(() => Result());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.01,
        ),
        child: Container(
          width: width,
          padding: EdgeInsets.all(width * 0.04),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title →",
                style: TextStyle(
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: height * 0.008),
              Text(
                "Published 11 days ago | Jul 25 - 02:42 pm",
                style: TextStyle(
                  fontSize: width * 0.03,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

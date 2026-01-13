// 

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Febtablepage extends StatelessWidget {
  const Febtablepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 900 ? 900.0 : screenWidth * 0.95;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// HEADER
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromARGB(255, 11, 49, 174),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "STUCOR - TimeTable",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth < 400 ? 16 : 20,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            /// BODY
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    width: contentWidth,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// TITLE
                        const Text(
                          "Feb/Mar 2025 Semester Timetable - AU Distance Education",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 9, 19, 135),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Published 11 days ago | Jul 25 - 02:42 PM",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const Divider(),

                        /// DESCRIPTION
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            children: [
                              const TextSpan(
                                text:
                                    "Anna University exam timetable is available. Kindly download the timetable provided below and prepare accordingly. ",
                              ),
                              TextSpan(
                                text: "Click here",
                                style:
                                    const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(const Browser());
                                  },
                              ),
                              const TextSpan(
                                text:
                                    " to share with classmates.",
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// PG TABLE
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  _cell("PG DEGREE", bold: true),
                                  _cell("All Departments"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  _cell("DEPARTMENT", bold: true),
                                  _cell("Download",
                                      color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        /// NOTE
                        const Text(
                          "Note: Download links serve PDFs from Anna University domains.",
                          style: TextStyle(fontSize: 16),
                        ),

                        const SizedBox(height: 10),

                        /// SOURCE
                        Row(
                          children: [
                            const Text(
                              "SOURCE: ",
                              style:
                                  TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () => Get.to(const Browser()),
                              child: const Text(
                                "coe1.annauniv.edu",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            /// BOTTOM BAR
            BottomNavigationBar(
              backgroundColor:
                  const Color.fromARGB(255, 33, 89, 243),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () => Get.to(const Comment()),
                    icon: const Icon(Icons.message, color: Colors.white),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () => Get.to(const Browser()),
                    icon: const Icon(Icons.share, color: Colors.white),
                  ),
                  label: "",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// TABLE CELL
  Widget _cell(String text,
      {bool bold = false, Color color = Colors.black}) {
    return Container(
      height: 28,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          color: color,
        ),
      ),
    );
  }
}

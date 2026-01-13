// 

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultportal.dart';

class Assesspage extends StatelessWidget {
  const Assesspage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

    return Scaffold(
      appBar: AppBar(title: const Text("Assessment")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                /// MAIN CARD
                Container(
                  width: contentWidth,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// TITLE
                      const Text(
                        "Semester Results",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      const Text(
                        "The internal short comprehension passage practice in skimming, scanning and predicting writing.",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 15),

                      /// STEPS
                      const Text(
                        "Steps to Check your internal marks",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "1. Listening to dialogues or conversations and completing.",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "2. Listening to dialogues or conversations and completing.",
                        style: TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 20),

                      /// BUTTON
                      Center(
                        child: InkWell(
                          onTap: () => Get.to(const Resultportal()),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 6, 37, 136),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "INTERNALS PORTAL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_right,
                                    size: 16, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// TABLE
                      _buildTable(),

                      const SizedBox(height: 20),

                      /// LINK TEXT
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            const TextSpan(
                                text:
                                    "To check Listening- listening to dialogues, visit "),
                            TextSpan(
                              text: "Assessment section",
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(const Assesspage());
                                },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// NOTE
                      RichText(
                        text: const TextSpan(
                          style:
                              TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Note: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "The internal listening is available only in STUCOR App to check your GPA / CGPA scores.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// BOTTOM BAR
                Container(
                  width: double.infinity,
                  height: 70,
                  color: const Color.fromARGB(255, 11, 25, 118),
                  child:
                      const Icon(Icons.message, color: Colors.white, size: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// TABLE WIDGET
  Widget _buildTable() {
    Widget cell(String text, {Color color = Colors.black}) {
      return Container(
        alignment: Alignment.center,
        height: 30,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black)),
        child: Text(text, style: TextStyle(fontSize: 12, color: color)),
      );
    }

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              cell("INTERNALS", color: Colors.blue),
              cell("UG"),
              cell("PG", color: Colors.blue),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              cell("STATUS", color: Colors.blue),
              cell("Not Published"),
              cell("Not Published"),
            ],
          ),
        ),
      ],
    );
  }
}

// 
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Medalpage extends StatelessWidget {
  const Medalpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double contentWidth =
              maxWidth > 650 ? 650 : maxWidth * 0.95;

          return SingleChildScrollView(
            child: Column(
              children: [

                /// 🔹 App Bar
                Container(
                  height: 80,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 11, 49, 174),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "STUCOR - Rank & Medalist",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Main Content Card
                SizedBox(
                  width: contentWidth,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Medalist of AU Affiliated Colleges",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 9, 19, 135)),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "published 1 month ago | Jul 25 - 02:42 pm",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),

                        const Divider(),

                        /// 🔹 Description
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            children: [
                              const TextSpan(
                                  text:
                                      "Every academic year Anna University exam timetable or "
                                      "conversations and completing kindly download timetable "
                                      "provided below and prepare for the examination accordingly. "),
                              TextSpan(
                                text: "Click here",
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.to(Browser()),
                              ),
                              const TextSpan(
                                  text:
                                      " to share with classmates. We have attached those details for your reference below."),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// 🔹 Convocation Table
                        _convocationTable(),

                        const SizedBox(height: 20),

                        /// 🔹 Note
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Note: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              TextSpan(
                                text:
                                    "Download links serve PDFs from Anna University domains.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),

                        /// 🔹 Source
                        Row(
                          children: [
                            const Text("SOURCE: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            InkWell(
                              onTap: () => Get.to(Browser()),
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

                const SizedBox(height: 80),
              ],
            ),
          );
        },
      ),

      /// 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 33, 89, 243),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => Get.to(Comment()),
              icon: const Icon(Icons.message, color: Colors.white),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => Get.to(Browser()),
              icon: const Icon(Icons.share, color: Colors.white),
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  /// 🔹 Convocation Table Widget
  Widget _convocationTable() {
    final convocations = [
      "45th convocation",
      "44th convocation",
      "43rd convocation",
      "42nd convocation",
      "41st convocation",
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _column("CONVOCATION", convocations),
        _column("MEDALIST",
            List.filled(convocations.length, "Download"),
            isLink: true),
      ],
    );
  }

  Widget _column(String header, List<String> values,
      {bool isLink = false}) {
    return Column(
      children: [
        _cell(header, bold: true),
        ...values.map(
          (e) => _cell(
            e,
            color: isLink ? Colors.blue : Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _cell(String text,
      {bool bold = false, Color color = Colors.black}) {
    return Container(
      height: 32,
      width: 140,
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

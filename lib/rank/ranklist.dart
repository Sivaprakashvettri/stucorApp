// 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/comment.dart';

class Ranklist extends StatelessWidget {
  const Ranklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double contentWidth =
              maxWidth > 600 ? 600 : maxWidth * 0.95;

          return SingleChildScrollView(
            child: Column(
              children: [

                /// 🔹 AppBar
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

                /// 🔹 Main Card
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
                          "Ranklist of AU Affiliated colleges",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 9, 19, 135)),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "published 11 months ago | Jul 25 - 02:42 pm",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),

                        const Divider(),

                        const Text(
                          "Every academic year Anna University exam timetable or "
                          "conversations and completing kindly download timetable "
                          "provided below and prepare for the examination accordingly. "
                          "We have attached those to share details for reference below.",
                          style: TextStyle(fontSize: 16),
                        ),

                        const SizedBox(height: 20),

                        /// 🔹 UG Table
                        _yearTable(
                          title: "UG - YEAR",
                          years: ["2023", "2022", "2021", "2020"],
                          actionTitle: "RANKLIST",
                        ),

                        const SizedBox(height: 20),

                        /// 🔹 PG Table
                        _yearTable(
                          title: "PG - YEAR",
                          years: ["2023", "2022", "2021", "2020"],
                          actionTitle: "TIMETABLE",
                        ),

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
                                      fontSize: 16)),
                              TextSpan(
                                  text:
                                      "Download links serve PDFs from Anna University domains.",
                                  style: TextStyle(fontSize: 16)),
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

      /// 🔹 Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 33, 89, 243),
        type: BottomNavigationBarType.fixed,
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

  /// 🔹 Reusable Table
  Widget _yearTable({
    required String title,
    required List<String> years,
    required String actionTitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _column(title, years),
        _column(actionTitle, List.filled(years.length, "Download"),
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
      height: 28,
      width: 120,
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

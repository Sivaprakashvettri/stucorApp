// 

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/resultportal.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

    return Scaffold(
      appBar: AppBar(title: const Text("Course Details")),
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
                      const Center(
                        child: Column(
                          children: [
                            Text(
                              "Complete AutoCAD Course",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blue),
                            ),
                            Text(
                              "Certificate Included",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      /// IMAGE
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                            height: 120,
                            width: 220,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// DESCRIPTION
                      const Text(
                        "AutoCAD is a popular CAD course. This course helps students "
                        "build industry-ready skills through structured lessons, "
                        "projects and assignments.",
                        style: TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 16),

                      /// COURSE INFO
                      _infoRow(
                        title: "Course Offered By:",
                        value: "Eduprep, a STUCOR initiative",
                      ),

                      const SizedBox(height: 8),

                      _infoRow(
                        title: "Course Fee:",
                        value:
                            "₹999 (Original ₹18,000) – One time student access",
                      ),

                      const SizedBox(height: 16),

                      /// WHAT YOU GET
                      const Text(
                        "What you get with this AutoCAD course?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      const Text("• Industry recognised certificate"),
                      const Text("• 28 Hours of video lessons"),
                      const Text("• Projects & assignments"),

                      const SizedBox(height: 20),

                      /// BUTTON
                      Center(
                        child: InkWell(
                          onTap: () => Get.to(const Resultportal()),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color:
                                  const Color.fromARGB(255, 6, 37, 136),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "VIEW MORE / ENROLL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_right,
                                    size: 16, color: Colors.white),
                              ],
                            ),
                          ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.message, color: Colors.white),
                      Icon(Icons.share, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// INFO ROW
  Widget _infoRow({required String title, required String value}) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
              text: "$title ",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: value),
        ],
      ),
    );
  }
}

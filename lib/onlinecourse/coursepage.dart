// 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/onlinecourse/course.dart';

class Coursepage extends StatelessWidget {
  const Coursepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
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
                          "STUCOR - Online Course",
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

                const SizedBox(height: 20),

                /// COURSE CARDS
                _courseCard(
                  width: contentWidth,
                  title1: "Complete AutoCAD",
                  title2: "Course - Certificate",
                  image:
                      "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                ),

                _courseCard(
                  width: contentWidth,
                  title1: "Full Stack Web",
                  title2: "Development Course",
                  image:
                      "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                ),

                _courseCard(
                  width: contentWidth,
                  title1: "Complete AutoCAD",
                  title2: "Course - Certificate",
                  image:
                      "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// REUSABLE RESPONSIVE CARD
  Widget _courseCard({
    required double width,
    required String title1,
    required String title2,
    required String image,
  }) {
    return InkWell(
      onTap: () => Get.to(const Course()),
      child: Container(
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            /// TEXT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title1,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text(title2, style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 4),
                  const Text("Include",
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),

            /// IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                image,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

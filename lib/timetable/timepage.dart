// 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/timetable/febtablepage.dart';
import 'package:stucorclone/timetable/tablepage.dart';

class Timepage extends StatelessWidget {
  const Timepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

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
                  child: SizedBox(
                    width: contentWidth,
                    child: Column(
                      children: [
                        _timeTableCard(
                          title:
                              "Apr/May 2025 semester timetable - AU Affiliated College",
                          subtitle:
                              "Published 11 days ago | Jul 25 - 02:42 PM",
                          onTap: () => Get.to(const Tablepage()),
                        ),
                        _timeTableCard(
                          title:
                              "Feb/Mar 2025 semester timetable - AU Distance Education",
                          subtitle:
                              "Published 3 months ago | Jul 25 - 02:42 PM",
                          onTap: () => Get.to(const Febtablepage()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// RESPONSIVE CARD
  Widget _timeTableCard({
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

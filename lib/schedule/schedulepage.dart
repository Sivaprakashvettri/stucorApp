

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/schedule/schedulefirst.dart';
import 'package:stucorclone/schedule/schedulesec.dart';

class Schedulepage extends StatelessWidget {
  const Schedulepage({super.key});

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
                      "STUCOR - Schedule",
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
                        _scheduleCard(
                          title:
                              "Practical Schedule for Apr/May 2025 Semester – AU Affiliated College",
                          subtitle:
                              "Published 1 month ago | Jul 25 - 02:42 PM",
                          onTap: () => Get.to(const Schedulefirst()),
                        ),
                        _scheduleCard(
                          title:
                              "Academic Schedule for Apr/May 2025 Semester – AU Affiliated College",
                          subtitle:
                              "Published 3 months ago | Jul 25 - 02:42 PM",
                          onTap: () => Get.to(const Schedulesec()),
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
  Widget _scheduleCard({
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

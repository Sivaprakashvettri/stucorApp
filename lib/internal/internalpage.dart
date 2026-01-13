// 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/internal/assesspage.dart';

class Internalpage extends StatelessWidget {
  const Internalpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Max content width for web
    final contentWidth = screenWidth > 600 ? 600.0 : screenWidth * 0.95;

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
                      "STUCOR - Assess & Internals",
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

            /// BODY
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: contentWidth,
                    child: Column(
                      children: [
                        _buildCard(
                          title: "Assessment Marks",
                          onTap: () => Get.to(const Assesspage()),
                        ),
                        _buildCard(
                          title: "Internal Marks",
                          onTap: () => Get.to(const Assesspage()),
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

  /// REUSABLE CARD
  Widget _buildCard({
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "$title →",
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
    );
  }
}

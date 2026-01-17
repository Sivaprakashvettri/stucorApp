

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/rank/medalpage.dart';
import 'package:stucorclone/rank/ranklist.dart';

class Rankpage extends StatelessWidget {
  const Rankpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;

          // responsive width
          double contentWidth =
              maxWidth > 600 ? 600 : maxWidth * 0.95;

          return SingleChildScrollView(
            child: Column(
              children: [

                /// 🔹 App Bar
                Container(
                  height: 80,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 11, 49, 174),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "STUCOR - Schedule",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Content
                SizedBox(
                  width: contentWidth,
                  child: Column(
                    children: [

                      /// Medal Page
                      InkWell(
                        onTap: () => Get.to(Medalpage()),
                        child: _card(
                          title: "Medalist of AU Affiliated Colleges",
                          subtitle:
                              "published 1 month ago | Jul 25 - 02:42 pm",
                        ),
                      ),

                      /// Rank List Page
                      InkWell(
                        onTap: () => Get.to(Ranklist()),
                        child: _card(
                          title: "Ranklist of AU Affiliated Colleges",
                          subtitle:
                              "published 3 months ago | Jul 25 - 02:42 pm",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// 🔹 Reusable Card
  Widget _card({required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(subtitle,
                style: const TextStyle(fontSize: 11, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

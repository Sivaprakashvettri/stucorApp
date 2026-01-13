// 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/event/event.dart';

class Eventpage extends StatelessWidget {
  const Eventpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () => Get.to(const Event()),
            child: Container(
              width: contentWidth,
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// DATE BOX
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 33, 113),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("21",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Text("AUG",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),

                  /// EVENT CONTENT
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// IMAGE
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                            height: screenWidth < 400 ? 120 : 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(height: 8),

                        /// TEXT
                        const Text(
                          "CREATOR'25, Arunai",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "Engineering College,",
                          style: TextStyle(fontSize: 14),
                        ),
                        const Text(
                          "International conference, ti...",
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

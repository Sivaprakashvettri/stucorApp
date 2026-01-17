// 
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/studyabroad/abroadform.dart';

class Abroadpage extends StatelessWidget {
  const Abroadpage({super.key});

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
                        icon: const Icon(Icons.arrow_back,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "STUCOR - STUDY ABROAD",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20),
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
                      children: [

                        const SizedBox(height: 10),

                        const Text(
                          "Study Abroad",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),

                        const SizedBox(height: 15),

                        /// 🔹 Description
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                            children: [
                              const TextSpan(
                                  text:
                                      "Feature coming soon! We’re excited to bring a complete study abroad experience. "),
                              const TextSpan(
                                  text:
                                      "Stay updated to know when it launches. "),
                              TextSpan(
                                text: "Click here",
                                style:
                                    const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(Abroadform());
                                  },
                              ),
                              const TextSpan(
                                  text:
                                      " to join the waitlist and be notified as soon as it’s live!"),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

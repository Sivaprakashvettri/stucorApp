// 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Gpapage extends StatelessWidget {
  const Gpapage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth * 0.95;

    return Scaffold(
      appBar: AppBar(title: const Text("GPA Calculator")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: contentWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  /// TITLE
                  const Center(
                    child: Text(
                      "GPA Calculator",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// NOTE
                  const Text(
                    "Note: To Listening- listening to STUCOR App's. "
                    "Apr/May 2024 and Nov/Dec 2024 kindly refer grade sheet. "
                    "GPA/CGPA calculator is only for reference.",
                    style: TextStyle(color: Colors.greenAccent),
                  ),

                  const SizedBox(height: 20),

                  /// FORM CARD
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        _title("Selected Regulation"),
                        _dropdownBox("Choose Regulation"),

                        _title("Selected Department"),
                        _dropdownBox("Choose Department"),

                        _title("Selected Semester"),
                        _dropdownBox("Choose Semester"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// DISCLAIMER
                  const Text(
                    "Disclaimer: This marksheet shown in STUCOR App is not final.",
                    style: TextStyle(color: Colors.greenAccent),
                  ),

                  const SizedBox(height: 20),

                  /// REPORT ISSUE
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () => Get.to(const Browser()),
                      child: const Text(
                        "Report an issue / bug >",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// SECTION TITLE
  Widget _title(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 6),
      child: Text(text, style: const TextStyle(color: Colors.blue)),
    );
  }

  /// DROPDOWN STYLE BOX
  Widget _dropdownBox(String hint) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              hint,
              style: const TextStyle(
                fontSize: 12,
                color: CupertinoColors.systemGrey,
              ),
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.arrow_drop_down),
            itemBuilder: (context) => const [
              PopupMenuItem(child: Text("Option 1")),
              PopupMenuItem(child: Text("Option 2")),
            ],
          ),
        ],
      ),
    );
  }
}

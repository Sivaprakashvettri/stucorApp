// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 800 ? 800.0 : screenWidth * 0.95;

    return Scaffold(
      appBar: AppBar(title: const Text("Event Details")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: contentWidth,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TITLE
                  const Text(
                    "CREATOR'25 ; Arunai Engineering College",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  const Text(
                    "International Conference, Tiruvannamalai",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),

                  const SizedBox(height: 10),

                  /// DATE
                  Row(
                    children: const [
                      Icon(Icons.timer),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "From Thursday 21 August 2025 until Friday, 22 August 2025",
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  /// IMAGE
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        "https://cdn.eduprep.co/wp-content/uploads/AutoCad-Complete-Course.jpg",
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// DESCRIPTION
                  const Text(
                    "AutoCAD is a popular CAD conference focusing on industry practices, "
                    "technical innovation and academic research collaboration.",
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 15),

                  /// ORGANIZER
                  _infoRow(
                    title: "Organised By:",
                    value: "Eduprep, a STUCOR initiative",
                  ),

                  const SizedBox(height: 10),

                  /// CONTACT
                  _infoRow(
                    title: "Contact Details:",
                    value: "+91 9987654321, +91 98987653423",
                  ),

                  const SizedBox(height: 20),

                  /// HIGHLIGHTS
                  const Text(
                    "Event Highlights",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(height: 6),
                  const Text("• Last date for registration"),
                  const Text("• Industry recognised certificate"),
                  const Text("• Technical sessions & workshops"),
                  const Text("• Projects & assignments"),

                  const SizedBox(height: 20),

                  /// HOW TO REACH
                  const Text(
                    "How to Reach Arunai Engineering College",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                      "Map: https://maps.app.goo.gl/Le6CVNa6UB2iXyMr5"),
                  const Text(
                      "Certificates will be provided to all participants"),

                  const SizedBox(height: 25),

                  /// ACTION BUTTONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _actionButton(
                        icon: BootstrapIcons.globe,
                        label: "Website",
                      ),
                      _actionButton(
                        icon: BootstrapIcons.envelope,
                        label: "Send Email",
                      ),
                    ],
                  ),
                ],
              ),
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
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: value),
        ],
      ),
    );
  }

  /// ACTION BUTTON
  Widget _actionButton({required IconData icon, required String label}) {
    return InkWell(
      onTap: () => Get.to(const Browser()),
      child: Container(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: const Color.fromARGB(255, 6, 35, 152)),
        ),
        child: Row(
          children: [
            Icon(icon,
                size: 16,
                color: const Color.fromARGB(255, 6, 12, 131)),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                  color: Color.fromARGB(255, 18, 10, 118)),
            ),
          ],
        ),
      ),
    );
  }
}

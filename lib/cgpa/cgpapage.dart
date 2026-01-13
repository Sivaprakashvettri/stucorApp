// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/cgpa/gpapage.dart';

class Cgpapage extends StatelessWidget {
  const Cgpapage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth;

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
                      "STUCOR - GPA / CGPA Calculator",
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
              child: Center(
                child: SizedBox(
                  width: contentWidth,
                  child: Column(
                    children: [
                      _menuTile(
                        icon: Icons.calculate,
                        title: "GPA Calculator",
                        onTap: () => Get.to(const Gpapage()),
                      ),
                      const Divider(),

                      _menuTile(
                        icon: BootstrapIcons.calculator_fill,
                        title: "CGPA Calculator",
                        onTap: () {},
                      ),
                      const Divider(),

                      _menuTile(
                        icon: BootstrapIcons.calendar2_plus_fill,
                        title: "Percentage Calculator",
                        onTap: () {},
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// REUSABLE MENU TILE
  Widget _menuTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 80,
        child: Row(
          children: [
            Icon(icon, color: Colors.blue, size: 30),
            const SizedBox(width: 20),

            /// TITLE
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 17),
              ),
            ),

            const Icon(
              Icons.arrow_circle_right,
              color: Colors.black,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}

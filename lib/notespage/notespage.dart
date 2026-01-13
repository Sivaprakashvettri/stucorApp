// 
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/widget/browser.dart';

class Notespage extends StatelessWidget {
  const Notespage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 700 ? 700.0 : screenWidth;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: contentWidth,
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
                            "STUCOR - Notes & QP",
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

                  const Divider(),

                  _menuItem(
                    icon: Icons.computer,
                    title: "CSE",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.globe,
                    title: "IT",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.rss,
                    title: "ECE",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.gear_wide_connected,
                    title: "MECH",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.building,
                    title: "Civil",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.heart_pulse,
                    title: "BME",
                  ),
                  _menuItem(
                    icon: BootstrapIcons.pip,
                    title: "Other UG Departments",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// REUSABLE LIST ITEM (RESPONSIVE)
  Widget _menuItem({
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () => Get.to(const Browser()),
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(icon, color: Colors.blue, size: 30),
                const SizedBox(width: 20),

                /// TITLE
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),

                const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.black,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}

// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/more/listmore.dart';

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double contentWidth =
              maxWidth > 600 ? 600 : maxWidth * 0.95;

          return Column(
            children: [

              /// 🔹 Header
              Container(
                height: 80,
                width: double.infinity,
                color: const Color.fromARGB(255, 11, 49, 174),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Row(
                  children: [
                    Text(
                      "STUCOR",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),

              /// 🔹 Menu Items
              _menuItem(
                width: contentWidth,
                icon: BootstrapIcons.globe,
                title: "Menu",
                onTap: () => Get.to(Listmore()),
              ),

              const Divider(),

              _menuItem(
                width: contentWidth,
                icon: BootstrapIcons.messenger,
                title: "Contact Us",
                onTap: () => Get.to(Listmore()),
              ),

              const Divider(),

              _menuItem(
                width: contentWidth,
                icon: BootstrapIcons.pip,
                title: "Terms / Privacy / Disclaimer",
                onTap: () => Get.to(Listmore()),
              ),
            ],
          );
        },
      ),
    );
  }

  /// 🔹 Reusable Menu Tile
  Widget _menuItem({
    required double width,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 80,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(icon, color: Colors.blue, size: 30),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

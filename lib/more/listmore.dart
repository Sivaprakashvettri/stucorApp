// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/event/eventpage.dart';
import 'package:stucorclone/internal/internalpage.dart';
import 'package:stucorclone/notespage/notespage.dart';
import 'package:stucorclone/onlinecourse/coursepage.dart';
import 'package:stucorclone/resultwidget/resultpage.dart';
import 'package:stucorclone/widget/browser.dart';
import 'package:stucorclone/widget/newspage.dart';

class Listmore extends StatelessWidget {
  const Listmore({super.key});

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

                _menuItem(
                  width: contentWidth,
                  icon: Icons.newspaper,
                  title: "News",
                  onTap: () => Get.to(Newspage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.journal_check,
                  title: "Result",
                  onTap: () => Get.to(Resultpage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.journal_medical,
                  title: "Internals",
                  onTap: () => Get.to(Internalpage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.calculator,
                  title: "GPA / CGPA",
                  onTap: () => Get.to(Browser()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: Icons.note,
                  title: "Notes / QP",
                  onTap: () => Get.to(Notespage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.person_video3,
                  title: "Online Course",
                  onTap: () => Get.to(Coursepage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.calendar,
                  title: "Event",
                  onTap: () => Get.to(Eventpage()),
                ),
                const Divider(),

                _menuItem(
                  width: contentWidth,
                  icon: BootstrapIcons.calendar_event_fill,
                  title: "TimeTable",
                  onTap: () => Get.to(Browser()),
                ),
                const Divider(),
              ],
            ),
          );
        },
      ),
    );
  }

  /// 🔹 Reusable Menu Tile (Responsive)
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

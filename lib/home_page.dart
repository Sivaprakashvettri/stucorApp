// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/cgpa/cgpapage.dart';
import 'package:stucorclone/event/eventpage.dart';
import 'package:stucorclone/internal/internalpage.dart';
import 'package:stucorclone/mainwidget.dart';
import 'package:stucorclone/more/morepage.dart';
import 'package:stucorclone/notespage/notespage.dart';
import 'package:stucorclone/onlinecourse/coursepage.dart';
import 'package:stucorclone/rank/rankpage.dart';
import 'package:stucorclone/resultwidget/resultpage.dart';
import 'package:stucorclone/schedule/schedulepage.dart';
import 'package:stucorclone/studyabroad/abroadpage.dart';
import 'package:stucorclone/syllabus/syllabuspage.dart';
import 'package:stucorclone/timetable/timepage.dart';
import 'package:stucorclone/widget/newspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 32, 144),
        title: const Text("STUCOR",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          IconButton(
            onPressed: () => Get.to(Newspage()),
            icon: const Icon(BootstrapIcons.bell, color: Colors.white),
          )
        ],
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth > 900
              ? 4
              : constraints.maxWidth > 600
                  ? 3
                  : 2;

          return SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 20),

                const Text(
                  "Trusted by 20 Lakh+ Students",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                /// 🔹 Responsive Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    crossAxisCount: crossAxisCount,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [

                      _item(Icons.newspaper, "News", () => Get.to(Newspage())),
                      _item(BootstrapIcons.journal_check, "Results",
                          () => Get.to(Resultpage())),
                      _item(BootstrapIcons.journal_medical, "Internals",
                          () => Get.to(Internalpage())),
                      _item(BootstrapIcons.calculator, "GPA/CGPA",
                          () => Get.to(Cgpapage())),
                      _item(Icons.note, "Notes/QP",
                          () => Get.to(Notespage())),
                      _item(BootstrapIcons.person_video3, "Online Course",
                          () => Get.to(Coursepage())),
                      _item(BootstrapIcons.calendar, "Event",
                          () => Get.to(Eventpage())),
                      _item(BootstrapIcons.calendar_event_fill, "Timetable",
                          () => Get.to(Timepage())),
                      _item(BootstrapIcons.journal_text, "Syllabus",
                          () => Get.to(Syllabuspage())),
                      _item(BootstrapIcons.journal_album, "Schedule",
                          () => Get.to(Schedulepage())),
                      _item(BootstrapIcons.award_fill, "Rank/Medalist",
                          () => Get.to(Rankpage())),
                      _item(BootstrapIcons.geo_alt_fill, "Study Abroad",
                          () => Get.to(Abroadpage())),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Info Banner
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 211, 176),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Used by 20k+ faculty | 20 lakh+ Students",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),

      /// 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.globe), label: "Home"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () => Get.to(Resultpage()),
                  child: const Icon(BootstrapIcons.journal_check)),
              label: "Results"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () => Get.to(Notespage()),
                  child: const Icon(Icons.note)),
              label: "Notes/QP"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () => Get.to(Morepage()),
                  child: const Icon(Icons.more_rounded)),
              label: "More"),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Mainwidget(
        icon: icon,
        text: text,
        size: 40,
        color: Colors.blueAccent,
      ),
    );
  }
}

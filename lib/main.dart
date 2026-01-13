import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stucorclone/cgpa/cgpapage.dart';
import 'package:stucorclone/cgpa/gpapage.dart';
import 'package:stucorclone/empty.dart';
import 'package:stucorclone/event/event.dart';
import 'package:stucorclone/event/eventpage.dart';
import 'package:stucorclone/home_page.dart';
import 'package:stucorclone/internal/assesspage.dart';
import 'package:stucorclone/internal/internalpage.dart';
import 'package:stucorclone/mainwidget.dart';
import 'package:stucorclone/more/listmore.dart';
import 'package:stucorclone/more/morepage.dart';
import 'package:stucorclone/notespage/notespage.dart';
import 'package:stucorclone/onlinecourse/course.dart';
import 'package:stucorclone/onlinecourse/coursepage.dart';
import 'package:stucorclone/rank/medalpage.dart';
import 'package:stucorclone/rank/ranklist.dart';
import 'package:stucorclone/rank/rankpage.dart';
import 'package:stucorclone/resultportal.dart';
import 'package:stucorclone/resultwidget/result.dart';
import 'package:stucorclone/resultwidget/resultpage.dart';
import 'package:stucorclone/schedule/schedulefirst.dart';
import 'package:stucorclone/schedule/schedulepage.dart';
import 'package:stucorclone/schedule/schedulesec.dart';
import 'package:stucorclone/studyabroad/abroadform.dart';
import 'package:stucorclone/studyabroad/abroadpage.dart';
import 'package:stucorclone/syllabus/sylb_page.dart';
import 'package:stucorclone/syllabus/syllabuspage.dart';
import 'package:stucorclone/timetable/febtablepage.dart';
import 'package:stucorclone/timetable/tablepage.dart';
import 'package:stucorclone/timetable/timepage.dart';
import 'package:stucorclone/widget/news.dart';
import 'package:stucorclone/widget/newspage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
    home:HomePage()
    );
  }
}

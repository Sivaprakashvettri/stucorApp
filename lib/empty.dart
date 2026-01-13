import 'package:flutter/material.dart';
import 'package:stucorclone/widget/news.dart';
import 'package:stucorclone/widget/newspage.dart';

class Empty extends StatelessWidget {
  const Empty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: News(),
    );
  }
}

import 'package:flutter/material.dart';
class NewsCard extends StatelessWidget {
  final VoidCallback? onTap;

  const NewsCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Semester Results published -",
              style: TextStyle(
                fontSize: width < 600 ? 16 : 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Distance Education",
              style: TextStyle(
                fontSize: width < 600 ? 15 : 17,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              "Published 11 days ago | Jul 25 - 02:42 pm",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

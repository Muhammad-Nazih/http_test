import 'package:flutter/material.dart';

class AzkarHomeScreen extends StatelessWidget {
  const AzkarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أذكار المسلم',
        ),
      ),
      body: ListView(
        children: [
          buildSectionItem(text: 'أذكار الإستيقاظ من النوم'),
          buildSectionItem(text: 'أذكار الصباح'),
          buildSectionItem(text: 'أذكار المساء'),
          buildSectionItem(text: 'أذكار ما بعد الصلاة'),
          buildSectionItem(text: 'أذكار النوم'),
          buildSectionItem(text: 'دعاء لبس الثوب'),
          buildSectionItem(text: 'دعاء دخول الخلاء'),
          buildSectionItem(text: 'دعاء الخروج من الخلاء'),
          buildSectionItem(text: 'دعاء قضاء الحاجة'),
          buildSectionItem(text: 'الذكر عند الخروج من المنزل'),
        ],
      ),
    );
  }
}

Widget buildSectionItem({required String text}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.brown[200],
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    ),
  );
}

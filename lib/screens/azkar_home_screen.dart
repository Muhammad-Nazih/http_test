import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http_app/models/section_model.dart';
import 'package:http_app/screens/section_details_screen.dart';

class AzkarHomeScreen extends StatefulWidget {
  const AzkarHomeScreen({super.key});

  @override
  State<AzkarHomeScreen> createState() => _AzkarHomeScreenState();
}

class _AzkarHomeScreenState extends State<AzkarHomeScreen> {
  List<SectionModel> sections = [];
  @override
  void initState() {
    super.initState();
    loadSections();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('أذكار المسلم')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: sections.length,
          itemBuilder: (context, index) =>
              buildSectionItem(model: sections[index]),
        ),
      ),
    );
  }

  Widget buildSectionItem({required SectionModel model}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                SectionDetailsScreen(id: model.id!, title: model.name!),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 12),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.brown[200],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            model.name!,
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

  loadSections() async {
    DefaultAssetBundle.of(context)
        .loadString('assets/database/sections_db.json')
        .then((data) {
          var response = json.decode(data);
          response.forEach((section) {
            SectionModel _section = SectionModel.fromJson(section);
            sections.add(_section);
          });
          setState(() {});
        })
        .catchError((error) {
          print(error.toString());
        });
  }
}

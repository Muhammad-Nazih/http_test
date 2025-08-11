import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http_app/models/section_details_model.dart';

class SectionDetailsScreen extends StatefulWidget {
  final int id;
  final String title;
  const SectionDetailsScreen({super.key, required this.id, required this.title});

  @override
  State<SectionDetailsScreen> createState() => _SectionDetailsScreenState();
}

class _SectionDetailsScreenState extends State<SectionDetailsScreen> {
  List<SectionDetailsModel> sectionDetails = [];
  @override
  void initState() {
    super.initState();
    loadSectionDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.title}")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.55),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3)
                )
              ]
            ),
            child: ListTile(
              title: Text('${sectionDetails[index].reference}',textDirection: TextDirection.rtl, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              subtitle: Text('${sectionDetails[index].content}',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ),
          ),
          separatorBuilder: (context, index) => Divider(height: 1,color: Colors.grey.withOpacity(0.8),),
          itemCount: sectionDetails.length,
        ),
      ),
    );
  }

  loadSectionDetails() async {
    sectionDetails =[];
    DefaultAssetBundle.of(context)
        .loadString('assets/database/section_details_db.json')
        .then((data) {
          var response = json.decode(data);
          response.forEach((section) {
            SectionDetailsModel _sectionDetails = SectionDetailsModel.fromJson(
              section
            );
            if(_sectionDetails.sectionId == widget.id){
              sectionDetails.add(_sectionDetails);
            }
          });
          setState(() {});
        })
        .catchError((error) {
          print(error.toString());
        });
  }
}

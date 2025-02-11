import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

class ModelTopicsScreen extends StatefulWidget {
  const ModelTopicsScreen({super.key});

  @override
  State<ModelTopicsScreen> createState() => _ModelTopicsScreenState();
}

class _ModelTopicsScreenState extends State<ModelTopicsScreen> {
  List<StudentModel1> model1 = <StudentModel1>[];
  bool isLoading = false;

  dataConvert() async {
    log("============1111111111111111=================");
    await Future.delayed(Duration(seconds: 5));
    log("============22222222222================");
    for (var i in studentInfo) {
      var jsonData = StudentModel1.fromJson(i);
      model1.add(jsonData);
    }
    log("============333333333333333=================");

  }

// 4,1,2,3,5,6 aysha      => 4, 1 5 6 2 3  => 412356

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: ()async {
                log("============444444444444=================");
               await dataConvert();
                log("============55555555555555=================");
                setState(() {});
                log("============666666666666=================");
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: model1.isEmpty
          ? Center(child: Text("No Data Found.."))
          : ListView.builder(
              itemCount: model1.length,
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text("${studentInfo1[index].id}"),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${model1[index].name}"),
                          Text("${model1[index].dep}"),
                        ],
                      ),
                      const Spacer(),
                      Text("${model1[index].sec}"),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

List studentInfo = [
  {"id": 12026, "name": "Md Mamun Islam", "dep": "CSE", "sec": "B"},
  {"id": 12021, "name": "Md Rafiul Razu", "dep": "CSE", "sec": "C"},
  {"id": 12025, "name": "Mst Aysha Siddika", "dep": "EEE", "sec": "B"},
];

List<StudentModel> studentInfo1 = [
  StudentModel(12026, "Md Mamun Islam", "CSE", "AB"),
  StudentModel(12021, "Md Mamun Islam", "CSE", "AEB"),
  StudentModel(12025, "Md Mamun Islam", "CSE", "BRR"),
  StudentModel(58965, "Md Mamun Islam", "ECSE", "BRR"),
  StudentModel(12027, "Md Mamun Islam", "ME", "BRRE"),
];

class StudentModel {
  int id;
  String? name;
  String? dep;
  String? sec;
  StudentModel(this.id, this.name, this.dep, this.sec);
}

class StudentModel1 {
  int? id;
  String? name;
  String? dep;
  String? sec;

  StudentModel1({this.id, this.name, this.dep, this.sec});

  // data fetch from server/ database
  StudentModel1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dep = json['dep'];
    sec = json['sec'];
  }

  // sent data to server / database
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['dep'] = this.dep;
    data['sec'] = this.sec;
    return data;
  }
}

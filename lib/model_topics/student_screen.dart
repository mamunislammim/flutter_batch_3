import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/model_topics/data_converter.dart';
import 'package:flutter_batch_3/model_topics/model.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  List<StudentModel1> studentList = [];

  fetchData() async {
    var data = await DataConverter().converterFun();
    studentList = data;
    log("===========aaa  :\${data[0].name}================");
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () async {
                var data = await DataConverter().converterFun();
                studentList = data;
                log("===========aaa  :\${data[0].name}================");
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: studentList.isEmpty
          ? const Center(child: Text("No Data Found.."))
          : ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text("\${studentList[index].id}"),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\${studentList[index].name}"),
                          Text("\${studentList[index].dep}"),
                        ],
                      ),
                      const Spacer(),
                      Text("\${studentList[index].sec}"),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

class NoteScreenWithPopUp extends StatefulWidget {
  const NoteScreenWithPopUp({super.key});

  @override
  State<NoteScreenWithPopUp> createState() => _NoteScreenWithPopUpState();
}

class _NoteScreenWithPopUpState extends State<NoteScreenWithPopUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  List<Map<String, dynamic>> studentList = [
    {"name": "Aysha", "phone": "01747474747", "id": "102636"},
    {"name": "Sidat", "phone": "01747474749", "id": "102638"},
    {"name": "Rabby", "phone": "01747474895", "id": "102639"},
    {"name": "Sourov", "phone": "01747477857", "id": "102632"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Note With PopUp", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Text("${index + 1}"),
            ),
            title: Text("${studentList[index]['name']}"),
            subtitle: Text("${studentList[index]['phone'] ?? "Empty"}"),
            trailing: InkWell(
                onTap: (){
                  log("============${index}===");
                  studentList.removeAt(index);
                  setState(() {});
                },
                child: Icon(Icons.delete)),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => AlertDialog(
                title: Text("Add New Note"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: idController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(height: 10),

                  ],
                ),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel",style: TextStyle(color: Colors.red))),
                  ElevatedButton(
                      onPressed: () {
                        Map<String,dynamic> a = {
                          "name" : nameController.text,
                          "phone" : phoneController.text,
                          "id" : idController.text,
                        };
                        studentList.add(a);
                        setState(() {});
                        nameController.clear();
                        phoneController.clear();
                        idController.clear();
                        Navigator.pop(context);
                      },
                      child: Text("Add"))
                ],
              ),
            );
          },
          child: Icon(Icons.add)),
    );
  }
}

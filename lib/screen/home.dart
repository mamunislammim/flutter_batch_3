import 'dart:developer';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> studentInfo = [
    {"name" : "Mamun", "id" : "102614", "dep" : "CSE"},
    {"name" : "Aysha", "id" : "102616", "dep" : "CSE"},
    {"name" : "Shourov", "id" : "102414", "dep" : "CSE"},
    {"name" : "Siddik", "id" : "102684", "dep" : "CSE"},
    {"name" : "Razu", "id" : "102612", "dep" : "CSE"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: studentInfo.length,
        itemBuilder: (context, a) {
          log("============= i : \$a =======================");
          return ContactWidget(name: studentInfo[a]['name'], phone: studentInfo[a]['id']);
        },
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.name, this.phone, this.img});
  final String name;
  final String? phone;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                  "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(phone ?? "Bad den vai,, Bedi manus"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

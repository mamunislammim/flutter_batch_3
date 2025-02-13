import 'package:flutter/material.dart';

class SecondDataScreen extends StatefulWidget {
  const SecondDataScreen({super.key, required this.id, required this.name, required this.phone,  this.cgpa, this.section});

  final int id;
  final String name;
  final String phone;
  final double? cgpa;
  final String? section;

  @override
  State<SecondDataScreen> createState() => _FirstDataScreenState();
}

class _FirstDataScreenState extends State<SecondDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title:
            Text("Second Screen Screen", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text("\${widget.id}"),
              Text("\${widget.name}"),
              Text("\${widget.phone}"),
              Text("\${widget.cgpa ?? ""}"),
              Text("\${widget.section ?? ""}"),
             ],
          ),
        ),
      ),
    );
  }
}

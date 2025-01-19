import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/my_screen/my_screen.dart';
import 'package:flutter_batch_3/screen/grid_view.dart';

class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({super.key});

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My TextFiled"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              onChanged: (value) {
                log("=========$value============");
              },
              cursorColor: Colors.red,
              cursorHeight: 10,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Mail or Phone",
                labelStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.red,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              log("====================Button : ${nameController.text}");
            },
            child: Text("Log In"),
          ),
          ElevatedButton(
            onPressed: () {
              nameController.clear();
              setState(() {});
            },
            child: Text("Clear"),
          ),
          SizedBox(height: 100),
          TextButton(onPressed: () {}, child: Text("Text Button")),
          SizedBox(height: 100),
          GestureDetector(
            onTap: () {},
            child: Text("GestureDetector"),
          ),
          SizedBox(height: 100),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => MyScreen(),
                ),
              );
            },
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}

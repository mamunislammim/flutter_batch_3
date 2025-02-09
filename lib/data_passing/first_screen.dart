import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_batch_3/data_passing/second_screen.dart';

class FirstDataScreen extends StatefulWidget {
  const FirstDataScreen({super.key});

  @override
  State<FirstDataScreen> createState() => _FirstDataScreenState();
}

class _FirstDataScreenState extends State<FirstDataScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("First Screen  :${nameController.text}", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                maxLength: 8,
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter SomeThing",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Show Data")),
              SizedBox(height: 10),

              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondDataScreen(
                          id: int.parse(nameController.text),
                          name: 'Mamun',
                          phone: '02563322',
                          section: "B",
                        ),
                      ),
                    );
                  },
                  child: Text("Pass Data")),
            ],
          ),
        ),
      ),
    );
  }
}

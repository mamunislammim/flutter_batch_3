import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/local_database/secure_storage.dart';

import '../login/login.dart';

class MyCGPACalculator extends StatefulWidget {
  const MyCGPACalculator({super.key});

  @override
  State<MyCGPACalculator> createState() => _MyCGPACalculatorState();
}

class _MyCGPACalculatorState extends State<MyCGPACalculator> {
  String myText = "";
  double cgpa = 0;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log("============MyCGPACalculator====================");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("CGPA Calculator",
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("======CGPA  : \${cgpa.toStringAsFixed(2)}"),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller1,
                        decoration: InputDecoration(
                            labelText: "1st semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                            labelText: "2nd semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller3,
                        decoration: InputDecoration(
                            labelText: " 3 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller4,
                        decoration: InputDecoration(
                            labelText: "4 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller5,
                        decoration: InputDecoration(
                            labelText: "5 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller6,
                        decoration: InputDecoration(
                            labelText: "6 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller7,
                        decoration: InputDecoration(
                            labelText: " 7 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller8,
                        decoration: InputDecoration(
                            labelText: "8 semester",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    cgpa = (double.parse(controller1.text) * .05) +  // 5
                        (double.parse(controller2.text) * 0.05) +   // 5
                        (double.parse(controller3.text) * 0.05) + // 5
                        (double.parse(controller4.text) * 0.10)+ // 10
                       ( double.parse(controller5.text) * 0.15) + // 15
                        (double.parse(controller6.text) * 0.2) + // 20
                        (double.parse(controller7.text) * 0.25) + // 25
                       ( double.parse(controller8.text) * 0.15); // 15
                    setState(() {});
                  },
                  child: Text("Add")),

              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                     AppLocalData().dataAllDeleteFun();
                     Navigator.pushReplacement(
                         context, MaterialPageRoute(builder: (c) => LoginScreen()));
                     },
                  child: Text("Log Out"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/screen/my_text_field.dart';

import 'login/login.dart';
import 'my_screen/gpa_calculator.dart';

void main() {
  log("======================Main Screen");
  runApp(MaterialScreen());
}

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}



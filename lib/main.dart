import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/screen/my_text_field.dart';
import 'package:flutter_batch_3/splash_screen.dart';

import 'data_passing/first_screen.dart';
import 'local_test.dart';
import 'login/login.dart';
import 'my_screen/gpa_calculator.dart';
import 'note_app/note_screen.dart';
import 'note_popup/import.dart';

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
      //  theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}

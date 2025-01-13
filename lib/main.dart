


import 'package:flutter/material.dart';
import 'package:flutter_batch_3/screen/checkbox_widget.dart';
import 'package:flutter_batch_3/screen/chip.dart';
import 'package:flutter_batch_3/screen/grid_view.dart';
import 'package:flutter_batch_3/screen/home.dart';
import 'package:flutter_batch_3/screen/stack.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckboxWidget(),
    );
  }
}

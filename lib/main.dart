import 'package:flutter/material.dart';
import 'package:flutter_batch_3/screen/my_text_field.dart';
import 'my_screen/first_screen.dart';

void main() {
  runApp(MaterialScreen());
}

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyTextFieldWidget(),
      ),
    );
  }
}



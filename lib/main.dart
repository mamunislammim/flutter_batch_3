import 'package:flutter/material.dart';
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
      home: FirstScreen(),
    );
  }
}



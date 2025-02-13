import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/local_database/secure_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalTestScreen extends StatefulWidget {
  const LocalTestScreen({super.key});

  @override
  State<LocalTestScreen> createState() => _LocalTestScreenState();
}

class _LocalTestScreenState extends State<LocalTestScreen> {
  int selectedIndex = 1;
  List<IconData> iconList = [
    Icons.home,
    Icons.add_shopping_cart,
    Icons.search,
    Icons.favorite_border,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Page \${selectedIndex + 1}",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add, size: 28, color: Colors.white),
        onPressed: () {
          // Handle middle button action
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: selectedIndex,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.white,
        activeColor: Colors.deepPurple,
        inactiveColor: Colors.grey,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) => setState(() => selectedIndex = index),
      ),
    );
  }
}

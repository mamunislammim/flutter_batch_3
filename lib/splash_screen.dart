import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/local_database/local_data.dart';
import 'package:flutter_batch_3/login/login.dart';

import 'my_screen/gpa_calculator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  screenNavigatorFun() async {
    log("=================Timer Start ==");
    await Future.delayed(const Duration(seconds: 2));
    var savedData = await AppLocalData().dataGetFun(key: "login");

    log("==========22222222======${savedData}");

    if (savedData == "yes") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => MyCGPACalculator()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => LoginScreen()));
    }
  }

  @override
  void initState() {
    screenNavigatorFun();
    log("=========================");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://upload.wikimedia.org/wikipedia/bn/6/66/%E0%A6%A6%E0%A6%BF%E0%A6%A8%E0%A6%BE%E0%A6%9C%E0%A6%AA%E0%A7%81%E0%A6%B0-%E0%A6%AA%E0%A6%B2%E0%A6%BF%E0%A6%9F%E0%A7%87%E0%A6%95%E0%A6%A8%E0%A6%BF%E0%A6%95-%E0%A6%87%E0%A6%A8%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%9F%E0%A6%BF%E0%A6%89%E0%A6%9F.png"),
      ),
    );
  }
}

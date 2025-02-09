import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/local_database/local_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalTestScreen extends StatefulWidget {
  const LocalTestScreen({super.key});

  @override
  State<LocalTestScreen> createState() => _LocalTestScreenState();
}

class _LocalTestScreenState extends State<LocalTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                AppLocalData().dataInsertFun(key: "id", value: "102614");
              },
              child: Text("Add Data"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                AppLocalData().dataGetFun(key: "id");
              },
              child: Text("Show Data"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                AppLocalData().dataDeleteFun(key: "name");
              },
              child: Text("Delete Data"),
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              height: 200,
              width: double.infinity,
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    child: Text("A"),
                  ),
                  Text("this is a Deawer"),
                  Text("drawer12345@gmail.com"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [Icon(Icons.home), SizedBox(width: 20), Text("Home")],
            ),
            SizedBox(height: 10),
            Row(
              children: [Icon(Icons.home), SizedBox(width: 20), Text("Home")],
            ),
            SizedBox(height: 10),
            Row(
              children: [Icon(Icons.home), SizedBox(width: 20), Text("Home")],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        // leading: Icon(
        //   Icons.person,
        //   color: Colors.white,
        //   size: 50,
        // ),
        title: Text("App Bar Title"),
        // actions: [
        //   Icon(
        //     Icons.login,
        //     color: Colors.white,
        //     size: 50,
        //   ),
        //   SizedBox(width: 20),
        //   Icon(
        //     Icons.settings,
        //     color: Colors.white,
        //     size: 50,
        //   ),
        // ],
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

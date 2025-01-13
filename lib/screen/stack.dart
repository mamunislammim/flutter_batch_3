


import 'package:flutter/material.dart';


class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                child: Text("data"),
              ),
               Positioned(
                 bottom: -50,
                 left: 20,
                 child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                             ),
               )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("|-lllllllllllllllllllllllll"),
            ],
          )
        ],
      ),
    );
  }
}

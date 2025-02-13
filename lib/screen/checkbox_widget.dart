import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Center(
        child: Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              activeColor: Colors.red,
              checkColor: Colors.green,
              //fillColor: WidgetStatePropertyAll(Colors.blue),
              value: status,
              onChanged: (value) {
                print("===============\${status}==============");
                status = value!;
                setState(() {});
                print("================\$status=============");
              },
            ),
            Text("Is Voter")
          ],
        ),
      ),
    );
  }
}

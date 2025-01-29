import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/my_screen/gpa_calculator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final myKey = GlobalKey<FormState>();
  bool isDisable = true;

  List<String> studentList = ["Rabby", "Assadullah", "Sidat", "Liton"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text("LOGIN",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
                SizedBox(height: 50),
                Text("Email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
                SizedBox(height: 10),
                TextFormField(
                  controller: mailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: _buildOutlineInputBorder(),
                    focusedBorder: _buildOutlineInputBorder(),
                    enabledBorder: _buildOutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Email can't empty.";
                    } else if (!value.contains("@") || !value.contains(".")) {
                      return "Wrong mail found.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                Text("Password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
                SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  obscureText: isDisable,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: InkWell(
                        onTap: () {
                          isDisable = !isDisable;
                          setState(() {});
                        },
                        child: isDisable == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    border: _buildOutlineInputBorder(),
                    focusedBorder: _buildOutlineInputBorder(),
                    enabledBorder: _buildOutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Password can't empty.";
                    } else if (value.length < 8) {
                      return "Password can't less than 8 digits.";
                    } else if (!(RegExp('[A-Z]').hasMatch(value) &&
                        RegExp('[a-z]').hasMatch(value) &&
                        RegExp('[0-9]').hasMatch(value))) {
                      return "Password not secure";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("Remember me.")
                  ],
                ),
                InkWell(
                  onTap: () {
                    // log("=========11111111==========");
                    // if (!myKey.currentState!.validate()) {
                    //   log("===========55555555=======");
                    //   return;
                    // }

                    var count = 500;

                    for (var studentName in studentList) {
                      if (studentName == mailController.text) {
                        count = 1000;
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text("Login Successful")));
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyCGPACalculator()));
                        break;
                      }
                    }

                    if (count == 500) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Wrong user. Please try again.")));
                    }

                    //
                    // if(studentList.contains(mailController.text)){
                    //   log("=============Success");
                    // } else{
                    //   log("============Not Found");
                    // }

                    // if(mailController.text == ){
                    //   log("=======Login Successful");
                    //
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(
                    //           backgroundColor: Colors.green,
                    //           content: Text("Login Successful")));
                    // }else{
                    //   log("========Wrong user");
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //       backgroundColor: Colors.red,
                    //       content: Text("Wrong user. Please try again.")));
                    // }
                  },
                  child: Card(
                    color: Colors.pinkAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black38),
      borderRadius: BorderRadius.circular(10),
    );
  }
}

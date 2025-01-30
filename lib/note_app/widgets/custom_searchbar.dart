import 'package:flutter/material.dart';

class CustomSearchbarWidget extends StatelessWidget {
  const CustomSearchbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "Search",
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          fillColor: const Color(0xff272727),
          hintStyle: const TextStyle(fontSize: 14),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

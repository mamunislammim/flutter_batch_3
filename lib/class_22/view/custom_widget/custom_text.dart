
import 'package:flutter/material.dart';


class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
        required this.text,
        this.fColor,
        this.fSize,
        this.maxLine,
        this.fWeight,
        this.textOverflow,
        this.textDecoration});

  final String text;
  final Color? fColor;
  final double? fSize;
  final int? maxLine;
  final FontWeight? fWeight;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine ?? 1,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        decoration: textDecoration ?? TextDecoration.none,
        color: fColor ?? Colors.black,
        fontSize: fSize ?? 14,
        fontWeight: fWeight ?? FontWeight.w300,
      ),
    );
  }
}
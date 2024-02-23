import 'package:cavz/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final Widget suffixIcon;
  const CustomTab({
    super.key,
    required this.text,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: tabColor,
        ),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon:suffixIcon,
                border: InputBorder.none,
                hintText: text,
                hintStyle: const TextStyle(color: texfieldtextColor)),
          ),
        ),
      ),
    );
  }
}

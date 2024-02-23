import 'package:cavz/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: themeColor),
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.poppins(
              color: kwhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}

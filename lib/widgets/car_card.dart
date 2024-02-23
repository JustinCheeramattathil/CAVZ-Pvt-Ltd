import 'package:cavz/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  const CarCard({
    super.key,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 120,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: tabColor),
            child: Column(
              children: [
                SizedBox(
                    height: 90,
                    width: 100,
                    child:
                        Image.asset(imageUrl)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      text,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        const Positioned(
            top: 10,
            left: 130,
            child: Icon(
              Icons.info_outline,
              color: kgreyColor,
              size: 20,
            )),
      ],
    );
  }
}

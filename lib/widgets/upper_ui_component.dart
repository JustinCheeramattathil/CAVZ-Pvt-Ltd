import 'package:cavz/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperUIComponent extends StatelessWidget {
  const UpperUIComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      color: kwhiteColor,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/236x/49/7e/77/497e776ce930ee41bb5f0b1c31d81800.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Onky',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Welcome Back',
                  style: GoogleFonts.poppins(fontSize: 14, color: textColor),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Wallet',
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kgreyColor)),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: themeColor),
                        child: Center(
                            child: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                    kwhiteColor, BlendMode.srcIn),
                                child:
                                    Image.asset('assets/images/wallet.png'))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$1000',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: themeColor),
                  child: const Icon(
                    Icons.menu,
                    color: kwhiteColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

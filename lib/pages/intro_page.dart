// ignore_for_file: must_be_immutable

import 'package:cavz/pages/login_page.dart';
import 'package:cavz/utils/colors.dart';
import 'package:cavz/widgets/custom_button.dart';
import 'package:cavz/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controllers/dropdown_provider.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset('assets/images/car.jpg'),
              Text(
                'Lorem ipsum dolor',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Lorem ipsum dolor sit amet,consectetur',
                style: GoogleFonts.poppins(fontSize: 18, color: kgreyColor),
              ),
              Text(
                'adipiscing elit,sed do eiusmod',
                style: GoogleFonts.poppins(fontSize: 18, color: kgreyColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select preferred Language',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: tabColor),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        'Select Language',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: textColor,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Provider.of<DropdownProvider>(context, listen: false)
                              .toggleVisibility();
                        },
                        child: const Icon(Icons.arrow_drop_down),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const CustomDropDown(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'GET STARTED',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

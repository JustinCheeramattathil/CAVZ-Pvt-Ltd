import 'package:cavz/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controllers/dropdown_provider.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DropdownProvider>(
      builder: (context, dropdownProvider, _) {
        return Visibility(
          visible: dropdownProvider.isVisible,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                        color: Colors.grey)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'English',
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        Radio<String>(
                          activeColor: themeColor,
                          value: 'english',
                          groupValue: dropdownProvider.selectedLanguage,
                          onChanged: (value) {
                            dropdownProvider.setSelectedLanguage(value!);
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Arabic',
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 202,
                        ),
                        Radio<String>(
                          activeColor: themeColor,
                          value: 'arabic',
                          groupValue: dropdownProvider.selectedLanguage,
                          onChanged: (value) {
                            dropdownProvider.setSelectedLanguage(value!);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

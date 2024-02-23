import 'package:cavz/controllers/checkbox_provider.dart';
import 'package:cavz/pages/home_page.dart';
import 'package:cavz/utils/colors.dart';
import 'package:cavz/widgets/custom_button.dart';
import 'package:cavz/widgets/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Account',
              style: GoogleFonts.poppins(
                  fontSize: 20, color: textColor, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTab(
                text: 'Enter your email',
                suffixIcon: Icon(
                  Icons.book,
                  color: Colors.transparent,
                )),
            const SizedBox(
              height: 10,
            ),
            const CustomTab(
                text: 'Enter your password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: kgreyColor,
                )),
            const SizedBox(
              height: 10,
            ),
            const CustomTab(
                text: 'Confirm your password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: kgreyColor,
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Consumer<CheckboxProvider>(
                  builder: (context, checkboxModel, child) {
                    return Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: themeColor),
                        ),
                        activeColor: themeColor,
                        value: checkboxModel.isCheckedTerms,
                        onChanged: (newValue) {
                          checkboxModel.toggleTerms(newValue!);
                        },
                      ),
                    );
                  },
                ),
                Text(
                  'Terms & Conditions, Privacy Policy',
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                const Text(
                  ' *',
                  style: TextStyle(color: themeColor, fontSize: 25),
                )
              ],
            ),
            Row(
              children: [
                Consumer<CheckboxProvider>(
                  builder: (context, checkboxModel, child) {
                    return Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: themeColor),
                        ),
                        activeColor: themeColor,
                        value: checkboxModel.isCheckedMarketing,
                        onChanged: (newValue) {
                          checkboxModel.toggleMarketing(newValue!);
                        },
                      ),
                    );
                  },
                ),
                Text(
                  'Marketing promotions & Newsletter',
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'Create',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                })
          ],
        ),
      ),
    );
  }
}

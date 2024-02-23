import 'package:cavz/pages/account_page.dart';
import 'package:cavz/utils/colors.dart';
import 'package:cavz/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Seattle.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(1.0),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.5),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      child: Image.asset('assets/images/cmp.png'),
                    ),
                    Positioned(
                      top: 80,
                      child: Text(
                        'Company Logo',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kwhiteColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                LoginButton(
                  text: 'Continue With Phone Number',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 25,
                ),
                LoginButton(
                  text: 'Login With Google',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },
                  child: LoginButton(
                    text: 'Create an Account',
                    onPressed: () {
                     
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Terms & Conditions, Privacy Policy',
                  style: GoogleFonts.poppins(
                    color: kwhiteColor,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: kwhiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

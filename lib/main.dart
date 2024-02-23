import 'package:cavz/controllers/checkbox_provider.dart';
import 'package:cavz/controllers/dropdown_provider.dart';
import 'package:cavz/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DropdownProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckboxProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CAVZ',
       
        home: SplashScreen(),
      ),
    );
  }
}

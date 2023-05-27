import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: const ColorScheme.light(background: Color(0xFFEBEAE8))),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

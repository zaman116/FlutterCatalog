import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/" : (context) => const LoginPage(),
        "/home" : (context) => const HomePage(),
        "/login" : (context) => const LoginPage(),
      },
    );
  }
}


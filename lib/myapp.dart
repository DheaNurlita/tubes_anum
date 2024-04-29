import 'package:flutter/material.dart';
import 'package:tubes_anum/kalkulator/_index.dart';
import 'package:tubes_anum/kalkulator/kalkulator.mobile.dart';
import 'package:tubes_anum/kalkulator/widget/buttonhitung.dart';
// ignore: unused_import
import 'package:tubes_anum/login/_index.dart';
import 'package:tubes_anum/ui-screen/homescreen.dart';
import 'package:tubes_anum/ui-screen/introduction/_index.dart';
// import 'package:tubes_anum/ui-screen/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark(),
      // home: LoginDesk()
      home: IntroMobile(),
    );
  }
}

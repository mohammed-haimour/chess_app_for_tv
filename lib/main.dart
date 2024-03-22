import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:flutter/material.dart';
import 'package:en_passant/Views/Home/HomeViews/Views/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Variables.colorBackground,
        body: HomeView(),
      ),
    );
  }
}

// git is downloaded
// https://github.com/mohammed-haimour/chess_app_for_tv.git
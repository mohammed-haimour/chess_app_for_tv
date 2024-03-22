import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [Text("             🛠          ️",style: TextStyle(fontSize: 20))],
        title: Text("الإعدادات" , style: GoogleFonts.getFont("IBM Plex Sans Arabic" , textStyle: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20))),
      ),
      body: Container(
        color: Colors.black87,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Welcome")),
      ),
    );
  }
}
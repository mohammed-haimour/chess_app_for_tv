import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayWithComputerView extends StatelessWidget {
  const PlayWithComputerView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [Text("             💻          ️" , style: TextStyle(fontSize: 20),)],
        title: Text("العب ضد الكمبيوتر" , style: GoogleFonts.getFont("IBM Plex Sans Arabic" , textStyle: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20))),
      ),
      body: Container(
        color: Variables.colorLightBlack,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Welcome")),
      ),
    );
  }
}

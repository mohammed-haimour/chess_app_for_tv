import 'package:en_passant/Shared/Variables/Players.dart';
import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:en_passant/Shared/Widgets/SidePlayer.dart';
import 'package:en_passant/Views/PlayWithSomeone/PlayWithSomeoneViews/Views/Widgets/ChessBoards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayWithSomeoneView extends StatelessWidget {
  const PlayWithSomeoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [Text("             👥          ️" , style: TextStyle(fontSize: 20),)],
        title: Text("العب مع واحد" , style: GoogleFonts.getFont("IBM Plex Sans Arabic" , textStyle: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20))),
      ),
      body: Container(
        color: Variables.colorLightBlack,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            SidePlayerInfo(player : Players.players["marwa"]!),
            Expanded(child: Container(color: Variables.colorNearToBlack, alignment: Alignment.center,
              child: ChessBoardForTwoPlayers(),
            )),
            SidePlayerInfo(player : Players.players["ahmed"]!),
          ],
        ),
      ),
    );
  }
}




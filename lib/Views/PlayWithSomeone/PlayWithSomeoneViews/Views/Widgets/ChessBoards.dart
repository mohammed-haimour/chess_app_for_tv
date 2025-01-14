import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bishop/bishop.dart' as bishop;
import 'package:squares/squares.dart';
import 'package:square_bishop/square_bishop.dart';


// With Another Person
class ChessBoardForTwoPlayers extends StatefulWidget {
  const ChessBoardForTwoPlayers({Key? key}) : super(key: key);
  @override
  State<ChessBoardForTwoPlayers> createState() => _ChessBoardForTwoPlayersState();
}

class _ChessBoardForTwoPlayersState extends State<ChessBoardForTwoPlayers> {
  late bishop.Game game;
  late SquaresState state;
  int player = Squares.white;
  bool aiThinking = false;
  bool flipBoard = false;

  @override
  void initState() {
    _resetGame(false);
    super.initState();
  }

  void _resetGame([bool ss = true]) {
    game = bishop.Game(variant: bishop.Variant.standard());
    state = game.squaresState(player);
    if (ss) setState(() {});
  }

  void _flipBoard() => setState(() => flipBoard = !flipBoard);

  void _onMove(Move move) async {
    bool result = game.makeSquaresMove(move);
    if (result) {
      setState(() => state = game.squaresState(player));
    }
    if (state.state == PlayState.theirTurn && !aiThinking) {
      setState(() => aiThinking = true);
      await Future.delayed(
          Duration(milliseconds: Random().nextInt(1000) + 250));
      game.makeRandomMove();
      setState(() {
        aiThinking = false;
        state = game.squaresState(player);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(4.0),
          child: BoardController(
            state: flipBoard ? state.board.flipped() : state.board,
            playState: state.state,
            pieceSet: PieceSet.merida(),
            theme: BoardTheme.blueGrey,
            moves: state.moves,
            onMove: _onMove,
            onPremove: _onMove,
            markerTheme: MarkerTheme(
              empty: MarkerTheme.squareDot,
              piece: MarkerTheme.corners(),
            ),
            promotionBehaviour: PromotionBehaviour.autoPremove,
          ),
        );
        // const SizedBox(height: 32),
        // OutlinedButton(
        //   onPressed: _resetGame,
        //   child: const Text('New Game'),
        // ),
        // IconButton(
        //   onPressed: _flipBoard,
        //   icon: const Icon(Icons.rotate_left),
        // )
  }
}


//! With Ai -->
class ChessBoardAgainstAi extends StatefulWidget {
  const ChessBoardAgainstAi({Key? key}) : super(key: key);
  @override
  State<ChessBoardAgainstAi> createState() => _ChessBoardAgainstAiState();
}

class _ChessBoardAgainstAiState extends State<ChessBoardAgainstAi> {
  late bishop.Game game;
  late SquaresState state;
  int player = Squares.white;
  bool aiThinking = false;
  bool flipBoard = false;

  @override
  void initState() {
    _resetGame(false);
    super.initState();
  }

  void _resetGame([bool ss = true]) {
    game = bishop.Game(variant: bishop.Variant.standard());
    state = game.squaresState(player);
    if (ss) setState(() {});
  }

  void _flipBoard() => setState(() => flipBoard = !flipBoard);

  void _onMove(Move move) async {
    bool result = game.makeSquaresMove(move);
    if (result) {
      setState(() => state = game.squaresState(player));
    }
    if (state.state == PlayState.theirTurn && !aiThinking) {
      setState(() => aiThinking = true);
      await Future.delayed(
          Duration(milliseconds: Random().nextInt(4750) + 250));
      game.makeRandomMove();
      setState(() {
        aiThinking = false;
        state = game.squaresState(player);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: BoardController(
        state: flipBoard ? state.board.flipped() : state.board,
        playState: state.state,
        pieceSet: PieceSet.merida(),
        theme: BoardTheme.blueGrey,
        moves: state.moves,
        onMove: _onMove,
        onPremove: _onMove,
        markerTheme: MarkerTheme(
          empty: MarkerTheme.dot,
          piece: MarkerTheme.corners(),
        ),
        promotionBehaviour: PromotionBehaviour.autoPremove,
      ),
    );
    // const SizedBox(height: 32),
    // OutlinedButton(
    //   onPressed: _resetGame,
    //   child: const Text('New Game'),
    // ),
    // IconButton(
    //   onPressed: _flipBoard,
    //   icon: const Icon(Icons.rotate_left),
    // )
  }
}
import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier{
  List Name = [
    "Tic-Tac-Toe",
    "Chess",
    "Chess",
    "Chess",
  ];
  List URI = [
    Uri.parse("https://playtictactoe.org/"),
    Uri.parse("https://www.chess.com/play"),
    Uri.parse("https://www.chess.com/play"),
    Uri.parse("https://www.chess.com/play"),
  ];
  List Images = [
    "Assets/Images/tic.png",
    "Assets/Images/chess.png",
    "Assets/Images/chess.png",
    "Assets/Images/chess.png",
  ];
}
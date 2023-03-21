import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  List Name = [
    "FlipKart",
    "Spotify",
  ];
  List URI = [
    Uri.parse("https://www.flipkart.com/"),
    Uri.parse("https://open.spotify.com/"),
    // Uri.parse("https://www.chess.com/play"),
    // Uri.parse("https://www.chess.com/play"),
  ];
  List Images = [
    "https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/flipkart-plus_8d85f4.png",
    "https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/flipkart-plus_8d85f4.png",
  ];
}
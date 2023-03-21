import 'package:all_in_one_app/Screen/Game/Provider/GameProvider.dart';
import 'package:all_in_one_app/Screen/Home/HomeProvider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GameProvider? gameProvidertrue;
  GameProvider? gameProviderfalse;
  @override
  Widget build(BuildContext context) {
    gameProviderfalse = Provider.of<GameProvider>(context, listen: false);
    gameProvidertrue = Provider.of<GameProvider>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse("${gameProviderfalse!.URI[index]}"),
          ),
        ),
      ),
    );
  }
}

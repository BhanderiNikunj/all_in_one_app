import 'package:all_in_one_app/Screen/App/Provider/AppProvider.dart';
import 'package:all_in_one_app/Screen/Home/HomeProvider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  AppProvider? appProvidertrue;
  AppProvider? appProviderfalse;
  @override
  Widget build(BuildContext context) {
    appProviderfalse = Provider.of<AppProvider>(context, listen: false);
    appProvidertrue = Provider.of<AppProvider>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse("${appProviderfalse!.URI[index]}"),
          ),
        ),
      ),
    );
  }
}

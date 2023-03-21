import 'package:all_in_one_app/Screen/Home/HomeProvider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("All in one App"),
            backgroundColor: Colors.black,
            bottom: TabBar(
              onTap: (value) {
                homeProviderfalse!.ChangeScreen(value);
              },
              tabs: [
                Tab(
                  icon: Icon(Icons.games_outlined),
                ),
                Tab(
                  icon: Icon(Icons.games_outlined),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.black,
          body: homeProviderfalse!.Screens[homeProvidertrue!.i],
        ),
      ),
    );
  }
}

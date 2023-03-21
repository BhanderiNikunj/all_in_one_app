import 'package:all_in_one_app/Screen/App/Provider/AppProvider.dart';
import 'package:all_in_one_app/Screen/Home/HomeProvider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddApp extends StatefulWidget {
  const AddApp({Key? key}) : super(key: key);

  @override
  State<AddApp> createState() => _AddAppState();
}

class _AddAppState extends State<AddApp> {
  AppProvider? appProvidertrue;
  AppProvider? appProviderfalse;

  @override
  Widget build(BuildContext context) {
    appProviderfalse = Provider.of<AppProvider>(context, listen: false);
    appProvidertrue = Provider.of<AppProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: appProviderfalse!.URI.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Button(index),
            ],
          ),
        ),
      ),
    );
  }

  Widget Button(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'game', arguments: index);
        },
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("${appProviderfalse!.Images[index]}"),
              SizedBox(height: 20),
              Text(
                "${appProviderfalse!.Name[index]}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

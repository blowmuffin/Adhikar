import 'package:adhikar2/bodyOfAllPages/bodyOfAll.dart.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BodyOfAll();
              }));
            }),
      ),
      body: SafeArea(
        child: Center(child: Text('SettingsPage')),
      ),
    );
  }
}

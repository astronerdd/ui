import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('responsive-ui')),

      body: Center(child: width < 600 ? mobileUI() : desktopUI()),
    );
  }

  Widget mobileUI() {
    return Text("Mobile UI");
  }

  Widget desktopUI() {
    return Text("Desktop UI");
  }
}

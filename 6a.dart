import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homeScreen(), debugShowCheckedModeBanner: false);
  }
}

class CustomWidget extends StatelessWidget {
  final String title;

  CustomWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("$title clicked!");
      },
      child: Text(title),
    );
  }
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("custom widgets!")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(title: "Login"),
            CustomWidget(title: "Register"),
            CustomWidget(title: "Submit"),
          ],
        ),
      ),
    );
  }
}

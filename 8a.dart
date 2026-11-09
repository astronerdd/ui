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

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _homeScreen();
}

class _homeScreen extends State<HomeScreen> {
  double size = 100;
  Color color = Colors.blue;

  void animateBox() {
    setState(() {
      size = size == 100 ? 200 : 100;
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animations in Flutter")),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,

          width: size,
          height: size,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: animateBox,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main(){
	runApp(MyApp());
}

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home : homeScreen(),
			debugShowCheckedModeBanner : false,
		);
	}
}

class homeScreen extends StatefulWidget{
	@override
	State<homeScreen> createState()=> _counterScreenState();
}

class _counterScreenState extends State<homeScreen>{
	int count =0;
	
	void increment(){
		setState(
			(){count++;}
		);
	}
	void decrement(){
		setState(
			(){count--;}
		);
	}
	
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar : AppBar(
				title : Text("counter App"),
			),
			
			body : Center(
				child : Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children :[
						Text(
							"Count :  $count",
							style : TextStyle(fontSize : 30),
						),
						
						ElevatedButton(
							onPressed : increment,
							child : Text("Increment"),
						),
						ElevatedButton(
							onPressed : decrement,
							child : Text("decrement"),
						),
					],
				),
			),
		);
	}

}


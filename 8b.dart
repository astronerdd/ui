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
	State<homeScreen> createState() => _homeScreen();
}

class _homeScreen extends State<homeScreen>{
	bool animate = false;
	
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title : Text("Slide n fade"),
			),
			body : Center(
				child : Column(
					mainAxisAlignment : MainAxisAlignment.center,
					
					children : [
						AnimatedOpacity(
							opacity : animate ? 1.0 : 0.0,
							
							duration : Duration(seconds : 2),
							
							child : Container(
								width : 100,
								height : 100,
								color : Colors.red,
								child : Text("Fade"),
							),
						),
						SizedBox(height : 40),
						AnimatedSlide(
							offset : animate ? Offset(0,0) : Offset(1,0),
							duration : Duration(seconds : 2),
							child : Container(
								width : 100,
								height : 100,
								color : Colors.blue,
								child : Text("Slide"),
							),
						),
						
						SizedBox(height : 40),
						ElevatedButton(
							onPressed : (){
								setState( () {
										animate = !animate;
									}
								);
							},
							child : Text("Animate"),
						),
						
					],
				),
			),
		);
	}
}

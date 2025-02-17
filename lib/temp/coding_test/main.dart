import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter 버튼 예제")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("ElevatedButton 클릭됨!");
                },
                child: Text("Elevated Button"),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  print("TextButton 클릭됨!");
                },
                child: Text("Text Button"),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("OutlinedButton 클릭됨!");
                },
                child: Text("Outlined Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
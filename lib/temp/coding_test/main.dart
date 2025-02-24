import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column & Row 연습"),
          backgroundColor: Colors.deepPurple,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row: 세 개의 아이콘 배치
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 40),
                Icon(Icons.star, color: Colors.amber, size: 40),
                Icon(Icons.star, color: Colors.amber, size: 40),
              ],
            ),
            SizedBox(height: 30), // 간격 추가
            // Column: 세 줄의 텍스트 출력
            Column(
              children: [
                Text(
                  "첫 번째 줄",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "두 번째 줄",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "세 번째 줄",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

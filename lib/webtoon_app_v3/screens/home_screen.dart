import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          "Today's TOONS",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

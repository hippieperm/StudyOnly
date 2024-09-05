import 'package:first_pj/Pomodoro%20App/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffE7626C),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xff232B55),
          ),
        ),
        cardColor: const Color(0xffF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

// timer_display.dart
import 'package:flutter/material.dart';

class TimerDisplay extends StatelessWidget {
  final String time;

  const TimerDisplay({
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 40),
        child: Text(
          time,
          style: const TextStyle(
            fontSize: 80,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

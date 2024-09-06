// time_buttons.dart
import 'package:flutter/material.dart';

class TimeButtons extends StatelessWidget {
  final Function(int, int) onPressed;
  final int selectedButtonIndex;

  const TimeButtons({
    required this.onPressed,
    required this.selectedButtonIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (i) {
            return TextButton(
              onPressed: () => onPressed(i, (i + 3) * 5),
              style: TextButton.styleFrom(
                side: selectedButtonIndex == i
                    ? const BorderSide(color: Colors.blue, width: 2)
                    : const BorderSide(color: Colors.transparent),
              ),
              child: Text(
                '${(i + 3) * 5}',
                style: TextStyle(
                  fontSize: selectedButtonIndex == i ? 30 : 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
// :?>
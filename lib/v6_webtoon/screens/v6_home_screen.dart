import 'package:flutter/material.dart';

class V6HomeScreeen extends StatelessWidget {
  const V6HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'Toons TODAY!',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.9)),
        ),
      ),
    );
  }
}

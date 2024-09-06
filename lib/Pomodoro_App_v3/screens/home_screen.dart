// home_screen.dart
import 'package:first_pj/Pomodoro_App_v3/model/timer_view_model.dart';
import 'package:flutter/material.dart';

import 'package:first_pj/Pomodoro_App_v3/widget/timer_display.dart';
import 'package:first_pj/Pomodoro_App_v3/widget/time_buttons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TimerViewModel(),
      child: Scaffold(
        backgroundColor: TimerViewModel().isBreakTime
            ? Colors.green
            : Theme.of(context).scaffoldBackgroundColor,
        body: Consumer<TimerViewModel>(
          builder: (context, timer, child) {
            return SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'POMOTIMER',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                  TimerDisplay(time: timer.format(timer.totalSeconds)),
                  const SizedBox(height: 30),
                  TimeButtons(
                    onPressed: timer.selectTime,
                    selectedButtonIndex: timer.selectedButtonIndex!,
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onLongPress: timer.resetGoals,
                    child: IconButton(
                      iconSize: 120,
                      color: Theme.of(context).cardColor,
                      onPressed:
                          timer.isRunning ? timer.pauseTimer : timer.startTimer,
                      icon: Icon(
                        timer.isRunning
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outlined,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('${timer.rounds}/4',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          const Text('ROUND',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('${timer.goals}/12',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          const Text('GOAL',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

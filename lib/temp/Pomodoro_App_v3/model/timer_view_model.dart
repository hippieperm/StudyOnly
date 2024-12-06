// timer_view_model.dart
import 'dart:async';
import 'package:flutter/material.dart';

class TimerViewModel extends ChangeNotifier {
  static const workTime = 1;
  static const breakTime = 2;

  int totalSeconds = workTime;
  bool isRunning = false;
  bool isBreakTime = false;

  int rounds = 0;
  int goals = 0;
  late Timer timer;
  int? selectedButtonIndex = 2;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      if (isBreakTime) {
        isBreakTime = false;
        totalSeconds = workTime;
        isRunning = true;
      } else {
        rounds += 1;
        if (rounds % 4 == 0) {
          goals += 1;
          rounds = 0;
        }
        isBreakTime = true;
        totalSeconds = breakTime;
      }
    } else {
      totalSeconds -= 1;
    }
    notifyListeners();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    isRunning = true;
    notifyListeners();
  }

  void pauseTimer() {
    timer.cancel();
    isRunning = false;
    notifyListeners();
  }

  void resetGoals() {
    goals = 0;
    rounds = 0;
    notifyListeners();
  }

  void selectTime(int index, int seconds) {
    selectedButtonIndex = index;
    totalSeconds = seconds * 60;
    notifyListeners();
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.').first.substring(2, 7);
  }
}

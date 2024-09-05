import 'dart:async';
import 'package:first_pj/Pomodoro_App_v2/widget/common_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const workTime = 1; // 25분 (1500초)
  static const breakTime = 2; // 5분 (300초)

  int totalSeconds = workTime; // 작업 시간을 기본값으로 설정
  bool isRunning = false;
  bool isBreakTime = false; // 휴식 중인지 확인하는 플래그

  int rounds = 0; // 각 4개의 사이클을 완료할 때 증가
  int goals = 0; // 12개의 라운드를 목표로 카운트
  late Timer timer;

  int? selectedButtonIndex = 2; // 디폴트로 25분에 해당하는 버튼 선택

  onTick(Timer timer) {
    if (totalSeconds == 0) {
      if (isBreakTime) {
        // 휴식 시간이 끝났을 때
        setState(() {
          isBreakTime = false; // 작업 모드로 돌아감
          totalSeconds = workTime; // 다시 작업 시간 설정
          isRunning = true;
        });
        // timer.cancel();
      } else {
        // 작업 시간이 끝났을 때
        setState(() {
          rounds += 1; // 사이클 완료

          if (rounds % 4 == 0) {
            goals += 1; // 4개의 라운드가 완료되면 1회 목표 달성
            rounds = 0;
          }

          // 휴식 시간으로 전환
          isBreakTime = true;
          totalSeconds = breakTime; // 휴식 시간 설정 (5분)
        });
      }
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.').first.substring(2, 7);
  }

  void _onButtonPressed(int index, int seconds) {
    setState(() {
      selectedButtonIndex = index;
      totalSeconds = seconds * 60; // 선택된 버튼에 따라 시간을 변경
    });
  }

  void _onLongPressed() {
    setState(() {
      goals = 0;
      rounds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isBreakTime
          ? Colors.green
          : Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(55),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'POMOTIMER',
                      fontSize: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 21,
                        horizontal: 40,
                      ),
                      child: CommonText(
                        text: format(totalSeconds),
                        fontSize: 80,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 5; i++)
                          TextButton(
                            onPressed: () {
                              _onButtonPressed(i, (i + 0) * 1); // 버튼마다 시간 변경
                            },
                            style: TextButton.styleFrom(
                              side: selectedButtonIndex == i
                                  ? const BorderSide(
                                      color: Colors.blue,
                                      width: 2,
                                    ) // 선택된 버튼의 테두리
                                  : const BorderSide(
                                      color: Colors
                                          .transparent), // 선택되지 않은 버튼의 테두리
                            ),
                            child: CommonText(
                              text: '${(i + 3) * 5}', // 15, 20, 25, 30, 35 설정
                              fontSize: selectedButtonIndex == i
                                  ? 30
                                  : 24, // 선택된 버튼의 텍스트 크기 변경
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 90),
                  GestureDetector(
                    onLongPress: () {
                      _onLongPressed();
                    },
                    child: IconButton(
                      iconSize: 120,
                      color: Theme.of(context).cardColor,
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      icon: Icon(
                        isRunning
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outlined,
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CommonText(
                              text: '$rounds/4',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              opacity: 0.6,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CommonText(
                              text: 'ROUND',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            CommonText(
                              text: '$goals/12',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              opacity: 0.6,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CommonText(
                              text: 'GOAL',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

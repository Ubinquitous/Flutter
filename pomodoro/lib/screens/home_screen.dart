import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;
  int pomodoros = 0;
  late Timer timer;
  bool isRunning = false;

  void onTick(Timer timer) {
    setState(() {
      if (totalSeconds == 0) {
        pomodoros += 1;
        isRunning = false;
        totalSeconds = 1500;
        timer.cancel();
      } else {
        totalSeconds -= 1;
      }
    });
  }

  void onStartPressed() {
    setState(() {
      isRunning = true;
    });
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onRestartPressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMinutes;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.replaceFirst("0:", "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 88,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: IconButton(
                onPressed: isRunning ? onPausePressed : onStartPressed,
                icon: Icon(
                  isRunning ? Icons.pause_rounded : Icons.play_arrow_rounded,
                ),
                iconSize: 160,
                color: Theme.of(context).cardColor,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: IconButton(
                onPressed: onRestartPressed,
                icon: const Icon(
                  Icons.restart_alt_rounded,
                ),
                iconSize: 50,
                color: Theme.of(context).cardColor,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Today Pomodoros',
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).textTheme.headline1!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$pomodoros',
                          style: TextStyle(
                            fontSize: 52,
                            color: Theme.of(context).textTheme.headline1!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

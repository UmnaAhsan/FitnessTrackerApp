import 'package:fitness_app/view/exercise/exercise.dart';
import 'package:fitness_app/view/login/onboarding.dart';
import 'package:fitness_app/view/menu.dart';
import 'package:fitness_app/view/running/running.dart';
import 'package:fitness_app/view/schedule/schedule.dart';
import 'package:fitness_app/view/workout/workout_detail.dart';
import 'package:fitness_app/yoga.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: Onboarding()));
  }
}

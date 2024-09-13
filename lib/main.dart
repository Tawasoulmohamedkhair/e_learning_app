import 'package:e_learning_app/screens/Home/Ui/reminder_screen.dart';
import 'package:e_learning_app/screens/splash/Ui/splash_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'ELearning App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // home: Learning_Reminder_Screen()
      // home: ScreenOfPickPlan(),
      );
  }
}


import 'package:e_learning_app/views/coursepage/UI/online_courses_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(300, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ELearning App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: child,
      ),
      child: OnlineCoursesScreen(),
      //child: ProductDesginScreen(),
    );
  }
}


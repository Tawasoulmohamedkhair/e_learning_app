import 'package:e_learning_app/views/splash/Ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}
<<<<<<< HEAD
=======

>>>>>>> origin/main
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'ELearning App',
        theme: ThemeData(
          useMaterial3: true,
        ),
<<<<<<< HEAD
        //home: ProductDesignDetaile(),
=======
>>>>>>> origin/main
        home: SplashScreen(),
        
      ),
    
    );
  }
}


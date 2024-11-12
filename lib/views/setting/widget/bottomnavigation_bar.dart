import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/detailesscrenn/navigationhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final BottomNavigationController controller =
    Get.put(BottomNavigationController());
Widget BottomNavigationbarScreen() {
  return BottomNavigationBar(
    selectedItemColor: AppColor.bluecolor,
    unselectedItemColor: AppColor.blackcolor,

    items: <BottomNavigationBarItem>[
        
      BottomNavigationBarItem(
          icon: MaterialButton(
              onPressed: () => controller.changeTabIndex(0),
              child: Icon(Icons.home)),
          label: ''),
      BottomNavigationBarItem(
        icon: MaterialButton(
            onPressed: () => controller.changeTabIndex(1),
            child: Icon(Icons.search)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: MaterialButton(
            onPressed: () => controller.changeTabIndex(2),
            child: Icon(Icons.bookmark_outline)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: MaterialButton(
            padding: EdgeInsets.only(right: 10),
          onPressed: () => controller.changeTabIndex(3),
          child: Row(
            children: [
              Container(
                    width: 30.w,
                    height: 40.h,
                    decoration: const BoxDecoration(
                        color: AppColor.bluecolor, shape: BoxShape.circle),
                    child: const Icon(color: Colors.white, Icons.person)),
                const SizedBox(
                  width: 10,
                ),
             
              const Text('Profile'),
            ],
          ),
        ),
          label: ''
      ),
    ],
    
  );
}


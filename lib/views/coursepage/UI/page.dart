/*import 'package:e_learning_app/views/coursepage/UI/books.dart';
import 'package:e_learning_app/views/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/coursepage/UI/onlinecoursdetails.dart';
import 'package:e_learning_app/views/coursepage/UI/search.dart';
import 'package:flutter/material.dart';

class BottomNavigationsBars extends StatefulWidget {
  const BottomNavigationsBars({super.key});

  @override
  State<BottomNavigationsBars> createState() => _BottomNavigationsBarsState();
}

class _BottomNavigationsBarsState extends State<BottomNavigationsBars> {
  int currenttab = 0;
  final List<Widget> screens = [
    OnlineCourseDetails(),
    Books(),
    SearchScreen(),
    MenuScreen()
  ];
  final PageStorageBucket buckt = PageStorageBucket();
  Widget currentscreen = BottomNavigationsBars();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentscreen,
          bucket: buckt,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*   MaterialButton(
                              minWidth: 40,
                              onPressed: () {
                                setState(() {
                                  currentscreen = BottomNavigationsBars();
                                  currenttab = 0;
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      width: 24,
                                      height: 24,
                                      'assets/images/Homes.png'),
                                  Text('Home')
                                ],
                              ),
                            )*/
                          ])
                    ]))));
  }
}*/

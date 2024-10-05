/*import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/onlinecourses/home_controller.dart';
import 'package:e_learning_app/views/coursepage/UI/books.dart';
import 'package:e_learning_app/views/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/coursepage/UI/onlinecoursdetails.dart';
import 'package:e_learning_app/views/coursepage/UI/search.dart';
import 'package:e_learning_app/views/splash/Ui/splashonlinelearningplatform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Widget> _widgetOptions = <Widget>[
  const Text('Index 0: Home'),
  const Text('Index 1: Settings'),
  const Text('Index 2: Profile'),
];

class Home extends StatelessWidget {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
          body: Center(
            child: _widgetOptions[_selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              // when this is tapped, call the contoller to update the index
              onTap: (int index) {
                _selectedIndex = index;
                print('current index is ${index}');
                controller.changeTabIndex(index);
              }
              ));
    });
  }
}
        /*IndexedStack(
          index: controller.tabIndex,
          children: [
            OnlineCourseDetails(),
            const Books(),
            const SearchScreen(),
            const MenuScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              _bottomnavigationbarItem(icon: Icons.home, label: 'Home'),
              _bottomnavigationbarItem(
                  icon: Icons.menu_book_outlined, label: 'Books'),
              _bottomnavigationbarItem(icon: Icons.search, label: 'Search'),
              _bottomnavigationbarItem(icon: Icons.menu, label: 'Menu'),
            ]),*/
   //   )
  
  

  /*_bottomnavigationbarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      backgroundColor: bluecolor,
    );
  }
}
*/
//the screen of detailes course
/*class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [
    OnlineCourseDetails(),
    const Books(),
    const SearchScreen(),
    const MenuScreen(),
  ];

  Widget currentScreen = OnlineCourseDetails();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    
    Widget currentScreen = Home();
    return Scaffold(
        backgroundColor: lavender,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: bluecolor,
          child: const Icon(color: Colors.white, Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            elevation: 0.3,
            notchMargin: 10,
            clipBehavior: Clip.antiAlias,
            color: bluecolor,
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen = OnlineCourseDetails();
                                currentTab = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(Icons.home_outlined,
                                    color: currentTab == 0
                                        ? Colors.white
                                        : Colors.white60),
                                Text(
                                  'Home',
                                  style: fontsize10,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                print('kl');

                                currentScreen = Books();
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(Icons.menu_book_outlined,
                                    color: currentTab == 1
                                        ? Colors.white
                                        : Colors.white60),
                                Text(
                                  'Books',
                                  style: fontsize10,
                                ),
                              ],
                            ),
                          ),
                        ]),
                    Row(
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              print('jl');

                              currentScreen = SearchScreen();
                              currentTab = 2;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.search,
                                  color: currentTab == 2
                                      ? Colors.white
                                      : Colors.white60),
                              Text(
                                'Search',
                                style: fontsize10,
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              print('l');

                              currentScreen = MenuScreen();
                              currentTab = 3;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.person_outline,
                                  color: currentTab == 3
                                      ? Colors.white
                                      : Colors.white60),
                              Text(
                                'Profile',
                                style: fontsize10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            )),
        body: PageStorage(bucket: bucket, child: currentScreen));
*/*/

import 'package:e_learning_app/views/coursepage/widget/onlinecourses/item_of_bottomnavigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CoursesBottomNavigationbar(),
    );
  }
}

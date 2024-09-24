import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/coursepage/UI/books.dart';
import 'package:e_learning_app/views/coursepage/UI/home.dart';
import 'package:e_learning_app/views/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/coursepage/UI/online_courses_screen.dart';
import 'package:e_learning_app/views/coursepage/UI/productdesign.dart';
import 'package:e_learning_app/views/coursepage/UI/search.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/details_of_student.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/list_of_course_details.dart';
import 'package:flutter/material.dart';

//the screen of detailes course
class OnlineCourseDetails extends StatefulWidget {
  OnlineCourseDetails({super.key});

  @override
  State<OnlineCourseDetails> createState() => _OnlineCourseDetailsState();
}

class _OnlineCourseDetailsState extends State<OnlineCourseDetails> {
  int currentTab = 0;

  final List<Widget> screens = [
    Home(),
    Books(),
    SearchScreen(),
    MenuScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      appBar: AppBar(
        backgroundColor: lavender,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            color: bluecolor,
            width: double.infinity,
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
                            currentScreen = Home();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.home_outlined, color: Colors.white),
                            Text(
                              'Home',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 19,
                        onPressed: () {
                          setState(() {
                            currentScreen = Books();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.menu_book_outlined, color: Colors.white),
                            Text(
                              'Books',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = SearchScreen();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = MenuScreen();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Text(
                              'Menu',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
          )),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnlineCoursesScreen(),
                          ));
                    },
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDesginScreen(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back))),
                Icon(Icons.settings),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              Image.asset('assets/images/Rectangle 896.png'),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: sonicSilver,
                ),
              ),
              Image.asset('assets/images/Mask Group.png'),
            ]),
            SizedBox(
              height: 20,
            ),
            Text('Tom Cruise'),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70),
              ),
              width: 89,
              height: 33,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/cap 1.png'),
                  Text('Student'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                detailsofstudent(
                    Image.asset(
                        width: 30, height: 40, 'assets/images/perspaleta1.png'),
                    '85%',
                    'Goal',
                    bluecolor),
                SizedBox(
                  width: 20,
                ),
                detailsofstudent(
                    Image.asset(
                        width: 37, height: 39, 'assets/images/perspaleta.png'),
                    '32',
                    'Total Class',
                    Lightorange),
                SizedBox(
                  width: 20,
                ),
                detailsofstudent(
                    Image.asset(
                        width: 34, height: 46, 'assets/images/Instapost.png'),
                    '+10',
                    'Total Books',
                    bluecolor),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Course Details'),
                Container(
                  width: 115,
                  height: 24,
                  decoration: BoxDecoration(
                      color: bluecolor, borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Clocks.png'),
                      Text('3 hours, 20 min'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            listofcoursedetails(
                Image.asset('assets/images/Group 23.png'),
                'Introduction',
                'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
            SizedBox(
              height: 40,
            ),
            listofcoursedetails(
                Image.asset('assets/images/Group 23.png'),
                'The Language of Color',
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
            SizedBox(
              height: 40,
            ),
            listofcoursedetails(
                Image.asset('assets/images/Group 23.png'),
                'The Psychology of Color',
                'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
          ],
        ),
      )),
    );
  }
}

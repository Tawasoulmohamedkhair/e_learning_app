import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/coursepage/UI/books.dart';
import 'package:e_learning_app/views/coursepage/UI/home.dart';
import 'package:e_learning_app/views/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/coursepage/UI/productdesign.dart';
import 'package:e_learning_app/views/coursepage/UI/search.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/details_of_student.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/item_of_bottomnavigation.dart';
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
    const Home(),
    const Books(),
    const SearchScreen(),
    const MenuScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      appBar: AppBar(
        backgroundColor: lavender,
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: bluecolor,
        child: const Icon(color: Colors.white, Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0.3,
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        color: bluecolor,
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                itemofbottomnavigationbar(
                  () {
                    setState(() {
                      currentScreen = const Home();
                      currentTab = 0;
                    });
                  },
                  'Home',
                  Icons.home_outlined,
                ),
                itemofbottomnavigationbar(
                  () {
                    setState(() {
                      currentScreen = const Books();
                      currentTab = 1;
                    });
                  },
                  'Books',
                  Icons.menu_book_outlined,
                ),
                    
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
          
                itemofbottomnavigationbar(
                  () {
                    setState(() {
                      currentScreen = const SearchScreen();
                      currentTab = 2;
                    });
                  },
                  'Search',
                  Icons.search,
                      
                ),
                itemofbottomnavigationbar(
                  () {
                    setState(() {
                      currentScreen = const MenuScreen();
                      currentTab = 3;
                    });
                  },
                  'Menu',
                  Icons.menu,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDesginScreen(),
                        ),
                      );
                    },
                    child: const Icon(Icons.settings)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              child: Stack(children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/Rectangle 896.png')),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: sonicSilver.withOpacity(.5),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                      width: 90, height: 90, 'assets/images/Mask Group.png'),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tom Cruise',
              style: fonsize23w500,
            ),
            const SizedBox(
              height: 10,
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
                  Text(
                    'Student',
                    style: fontsize14w500,
                  ),
                ],
              ),
            ),
            const SizedBox(
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
                const SizedBox(
                  width: 20,
                ),
                detailsofstudent(
                    Image.asset(
                        width: 37, height: 39, 'assets/images/perspaleta.png'),
                    '32',
                    'Total Class',
                    Lightorange),
                const SizedBox(
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
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course Details',
                  style: fontsize19w500,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: 130,
                  height: 24,
                  decoration: BoxDecoration(
                      color: bluecolor, borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Clocks.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '3 hours, 20 min',
                        style: fontsize10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            listofcoursedetails(
                Image.asset('assets/images/Group 23.png'),
                'Introduction',
                'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
            const SizedBox(
              height: 30,
            ),
            listofcoursedetails(
                Image.asset('assets/images/Group 23.png'),
                'The Language of Color',
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
            const SizedBox(
              height: 30,
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

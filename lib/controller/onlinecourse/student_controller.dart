import 'package:e_learning_app/model/student_model.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  var student = Student(
    name: "Tom Cruise",
    profileImage: "AssetsImages.cap1",
    role: "Student",
    goalPercentage: 85,
    totalClasses: 32,
    totalBooks: 10,
    courses: [
      Course(
          title: "Introduction",
          description:
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.",
         ),
      Course(
          title: "The Language of Color",
          description:
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.",
          ),
      Course(
          title: "The Psychology of Color",
          description:
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.",
          ),
    ],
  ).obs;

}

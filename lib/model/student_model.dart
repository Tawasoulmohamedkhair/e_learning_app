class Student {
  String name;
  String profileImage;
  String role;
  double goalPercentage;
  int totalClasses;
  int totalBooks;
  List<Course> courses;

  Student({
    required this.name,
    required this.profileImage,
    required this.role,
    required this.goalPercentage,
    required this.totalClasses,
    required this.totalBooks,
    required this.courses,
  });
}

class Course {
  String title;
  String description;

  Course({
    required this.title,
    required this.description,
  });
}

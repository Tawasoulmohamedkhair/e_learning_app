class Course {
  final String title;
  final double price;
  final String description;
  final List<Lesson> lessons;

  Course({
    required this.title,
    required this.price,
    required this.description,
    required this.lessons,
  });
}

class Lesson {
  final String title;
  final String duration;
  final String videoUrl;
  final bool isLocked;

  Lesson({
    required this.title,
    required this.duration,
    required this.videoUrl,
    this.isLocked = false,
  });
}

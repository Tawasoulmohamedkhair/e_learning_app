class Course {
  final String title;
  final String description;
  final double price;
  final List<VideoModel> lessons;

  Course({
    required this.title,
    required this.description,
    required this.price,
    required this.lessons,
  });
}

class VideoModel {
  final String title;
  final String duration;
  final String url;
  bool isLocked;

  VideoModel({
    required this.title,
    required this.duration,
    required this.url,
    this.isLocked = false,
  });
}
//
Course course = Course(
    title: 'DataBase', description: '', price: 74.00, lessons:videos);
List<VideoModel> videos = [
  VideoModel(
      title: 'Image Widget',
      duration: '4:16 mins',
      url: 'assets/videos/12-image.mp4'),
  VideoModel(
      title: 'Sqlite DateBase',
      duration: '3:11 mins',
      url: 'assets/videos/1.mp4'),
  VideoModel(
      title: 'DataBase Concept',
      duration: '4:38 mins',
      url: 'assets/videos/2.mp4',
      isLocked: true),
];

class TimeSlot {
  final int hour;
  final int minute;
  final String period; // "AM" or "PM"

  TimeSlot({required this.hour, required this.minute, required this.period});

  // Convert TimeSlot to a formatted string
  String get formattedTime {
    String minuteString = minute < 10 ? '0$minute' : '$minute';
    return '$hour:$minuteString $period';
  }
}

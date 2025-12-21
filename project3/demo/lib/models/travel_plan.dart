class TravelPlan {
  final String title;
  final String description;
  final String date;

  TravelPlan({required this.title, required this.description, required this.date});

  Map<String, String> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }

  factory TravelPlan.fromMap(Map<String, String> map) {
    return TravelPlan(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      date: map['date'] ?? '',
    );
  }
}

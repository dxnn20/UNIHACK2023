class Event{

  final String name;
  final String description;
  final String location;
  final String date;
  final String time;
  final String? image;
  final bool free;
  final String? category;
  bool isFavorite;
  num likeCount;

  Event({
    required this.name,
    required this.description,
    required this.location,
    required this.date,
    required this.time,
    this.image,
    required this.free,
    this.category,
    this.isFavorite = false,
    this.likeCount = 0
  });
}
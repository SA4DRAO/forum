class PostsModel {
  final String? title;
  final String? body;
  final int? likes;
  final bool? updated;
  final String? sId;
  final int? registrants;
  final String? duration;
  final String? venue;
  final String? date;

  PostsModel({
    required this.title,
    required this.body,
    required this.likes,
    required this.updated,
    required this.sId,
    required this.registrants,
    required this.duration,
    required this.venue,
    required this.date,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
        title: json['title'],
        body: json['body'],
        likes: json['likes'],
        updated: json['updated'],
        sId: json['_id'],
        registrants: json['registrants'],
        duration: json['duration'],
        venue: json['venue'],
        date: json['date']);
  }
}

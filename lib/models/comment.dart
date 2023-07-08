class Comment {
  String id;
  String userId;
  String text;
  DateTime timestamp;

  Comment({
    required this.id,
    required this.userId,
    required this.text,
    required this.timestamp,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      userId: json['userId'],
      text: json['text'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'text': text,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}

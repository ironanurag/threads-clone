import 'package:threads_clone/models/comment.dart';

class Post {
  String id;
  String userId;
  String text;
  String imageUrl;
  String videoUrl;
  String caption;
  List<String> likes;
  DateTime timestamp;
  List<Comment> comments;

  Post({
    required this.id,
    required this.userId,
    required this.text,
    required this.imageUrl,
    required this.videoUrl,
    required this.caption,
    required this.likes,
    required this.timestamp,
    required this.comments,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      text: json['text'],
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
      caption: json['caption'],
      likes: List<String>.from(json['likes']),
      timestamp: DateTime.parse(json['timestamp']),
      comments: (json['comments'] as List<dynamic>)
          .map((commentJson) => Comment.fromJson(commentJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'text': text,
      'imageUrl': imageUrl,
      'videoUrl': videoUrl,
      'caption': caption,
      'likes': likes,
      'timestamp': timestamp.toIso8601String(),
      'comments': comments.map((comment) => comment.toJson()).toList(),
    };
  }
}

class User {
  String id;
  String username;
  String fullName;
  String bio;
  String profileImageUrl;
  bool verified; // New field
  List<String> followers;
  List<String> following;
  List<String> posts;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.bio,
    required this.profileImageUrl,
    required this.verified,
    required this.followers,
    required this.following,
    required this.posts,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      fullName: json['fullName'],
      bio: json['bio'],
      profileImageUrl: json['profileImageUrl'],
      verified: json['verified'],
      followers: List<String>.from(json['followers']),
      following: List<String>.from(json['following']),
      posts: List<String>.from(json['posts']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'fullName': fullName,
      'bio': bio,
      'profileImageUrl': profileImageUrl,
      'verified': verified,
      'followers': followers,
      'following': following,
      'posts': posts,
    };
  }
}

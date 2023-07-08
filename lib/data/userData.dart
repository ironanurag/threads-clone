import '../models/user.dart';

User createDummyUser() {
  List<String> followers = ['follower1', 'follower2', 'follower3'];
  List<String> following = ['following1', 'following2', 'following3'];
  List<String> posts = ['post1', 'post2', 'post3'];

  User dummyUser = User(
    id: 'user1',
    username: 'dummy_user',
    fullName: 'Dummy User',
    bio: 'Hello, I am a dummy user!',
    profileImageUrl: 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    followers: followers,
    following: following,
    posts: posts,
    verified: true,
  );

  return dummyUser;
}

import '../models/comment.dart';
import '../models/post.dart';

List<Post> createDummyPosts() {
  List<Post> dummyPosts = [];

  List<String> likes1 = ['user1', 'user2', 'user3'];
  List<String> likes2 = ['user4', 'user5'];

  Comment comment1 = Comment(
    id: 'comment1',
    userId: 'user1',
    text: 'Great post!',
    timestamp: DateTime.now(),
  );

  Comment comment2 = Comment(
    id: 'comment2',
    userId: 'user2',
    text: 'Nice photo!',
    timestamp: DateTime.now(),
  );

  Post post1 = Post(
    id: 'post1',
    userId: 'user1',
    text: 'This is a dummy post',
    imageUrl: 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    videoUrl: 'https://example.com/video1.mp4',
    caption: 'Check out this amazing post!',
    likes: likes1,
    timestamp: DateTime.now(),
    comments: [comment1],
  );

  Post post2 = Post(
    id: 'post2',
    userId: 'user2',
    text: 'Another dummy post',
    imageUrl: 'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60',
    videoUrl: 'https://example.com/video2.mp4',
    caption: 'Just sharing some thoughts',
    likes: likes2,
    timestamp: DateTime.now(),
    comments: [comment2],
  );
  Post post3 = Post(
    id: 'post2',
    userId: 'user2',
    text: 'Another dummy post',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmy1BxSfOXmvcN47mH0cwDaeoAIqdeyMd7llQozRz&s',
    videoUrl: 'https://example.com/video2.mp4',
    caption: 'Just sharing some thoughts',
    likes: likes2,
    timestamp: DateTime.now(),
    comments: [comment2],
  );

  dummyPosts.add(post1);
  dummyPosts.add(post2);
  dummyPosts.add(post3);
  dummyPosts.add(post1);
  dummyPosts.add(post2);
  dummyPosts.add(post2);
  dummyPosts.add(post3);
  dummyPosts.add(post1);
  dummyPosts.add(post2);

  return dummyPosts;
}
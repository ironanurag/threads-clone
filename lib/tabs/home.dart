import 'package:flutter/material.dart';
import 'package:threads_clone/models/comment.dart';
import 'package:threads_clone/models/post.dart';

import '../data/postData.dart';

class PostHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Post> dummyPosts = createDummyPosts();


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: dummyPosts.length,
        itemBuilder: (BuildContext context, int index) {
          Post post = dummyPosts[index];

          return Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[300]!,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading:    CircleAvatar(
                    radius: 20.0,
                    // Replace with the post user's profile image
                    backgroundImage: AssetImage('asset/instalogo.png'),
                  ),
                  title:    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Replace with the post user's name
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      // Replace with the post user's handle
                      Text(
                        '@johndoe',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        post.text,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 4.0),
                              Text('${post.likes.length}'), // Display the likes count
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.mode_comment_outlined),
                              SizedBox(width: 4.0),
                              Text('${post.comments.length}'), // Display the comments count
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.repeat),
                              SizedBox(width: 4.0),
                              Text('0'), // Display the retweets count (dummy data)
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                              // Share button action
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



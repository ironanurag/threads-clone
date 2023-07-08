import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Activity'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of activity items
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              // Replace with the user's profile image associated with the activity
              backgroundImage: AssetImage('asset/instalogo.png'),
            ),
            title: Text('Activity Item $index'), // Replace with the activity item's title
            subtitle: Text('Activity Item Subtitle $index'), // Replace with the activity item's subtitle
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap on activity item
            },
          );
        },
      ),
    );
  }
}

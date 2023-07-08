import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of search results
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const CircleAvatar(
                    // Replace with the search result's user profile image
                    backgroundImage: AssetImage('asset/instalogo.png'),
                  ),
                  title: Text('Search Result $index'), // Replace with the search result title
                  subtitle: Text('Search Result Subtitle $index'), // Replace with the search result subtitle
                  onTap: () {
                    // Handle tap on search result
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
